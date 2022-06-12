import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/myevents/value_objects.dart';
import 'package:ictplus/domain/core/value_objects.dart';

part 'myevents_fp.freezed.dart';

@freezed
abstract class ForcePrep with _$ForcePrep {
  const factory ForcePrep({
    required UniqueId id,
    //@required TODO picture?
    required List<String> items,
  }) = _ForcePrep;

  factory ForcePrep.empty() => ForcePrep(
        id: UniqueId(),
        items: [],
      );
}
