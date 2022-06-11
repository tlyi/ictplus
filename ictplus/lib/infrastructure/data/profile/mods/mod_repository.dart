import 'dart:convert';
import 'package:ictplus/infrastructure/core/firestore_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/mods/i_mod_repository.dart';
import 'package:ictplus/domain/mods/mod.dart';
import 'package:ictplus/infrastructure/data/profile/mods/mod_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

//Used to manually retrieve module info from NUSMods, to be run only when needed

@LazySingleton(as: IModRepository)
class ModRepository implements IModRepository {
  final FirebaseFirestore _firestore;

  ModRepository(this._firestore);

  @override
  Future<Either<DataFailure, List<Mod>>> getMods() async {
    const String apiUrl =
        "https://api.nusmods.com/v2/2021-2022/moduleList.json";

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      var jsonMods = json.decode(response.body) as List<dynamic>;
      List<Mod> moduleList;
      moduleList = jsonMods
          .map((i) => ModDto.fromJson(i as Map<String, dynamic>).toDomain())
          .toList();

      return right(moduleList);
    } else {
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> uploadMods() async {
    try {
      final moduleRef = await _firestore.modulesRef();
      Either<DataFailure, List<Mod>> failureorModList = await getMods();

      List<Mod> modList = failureorModList.getOrElse(() => []);

      for (final mod in modList) {
        final moduleDto = ModDto.fromDomain(mod);
        await moduleRef.doc(mod.moduleCode).set(moduleDto.toJson());
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> addLastPosted() async {
    try {
      final moduleRef = await _firestore.modulesRef();
      moduleRef.get().then((snapshot) => snapshot.docs.forEach((element) {
            element.reference.update({'lastPosted': '0'});
          }));
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }
}
