import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/mods/mod.dart';

part 'mod_dtos.freezed.dart';
part 'mod_dtos.g.dart';

@freezed
abstract class ModDto implements _$ModDto {
  const ModDto._();

  const factory ModDto({
    required String moduleCode,
    required String title,
    required List<int> semesters,
    required String lastPosted,
  }) = _ModDto;

  factory ModDto.fromDomain(Mod mod) {
    return ModDto(
        moduleCode: mod.moduleCode,
        title: mod.moduleTitle,
        semesters: [],
        lastPosted: mod.lastPosted);
  }

  Mod toDomain() {
    return Mod(
        moduleCode: moduleCode, moduleTitle: title, lastPosted: lastPosted);
  }

  factory ModDto.fromJson(Map<String, dynamic> json) => _$ModDtoFromJson(json);

  factory ModDto.fromFirestore(DocumentSnapshot doc) {
    return ModDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
