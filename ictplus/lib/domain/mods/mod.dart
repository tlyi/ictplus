import 'package:freezed_annotation/freezed_annotation.dart';

part 'mod.freezed.dart';

@freezed
abstract class Mod implements _$Mod {
  const Mod._();

  const factory Mod({
    required String moduleCode,
    required String moduleTitle,
    required String lastPosted,
  }) = _Mod;

  factory Mod.empty() => const Mod(
        moduleCode: '',
        moduleTitle: '',
        lastPosted: '',
      );
}
