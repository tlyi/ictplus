import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_failure.freezed.dart';

@freezed
abstract class DataFailure with _$DataFailure {
  const factory DataFailure.unexpected() = _Unexpected;
  const factory DataFailure.insufficientPermission() = _InsufficientPermission;
  const factory DataFailure.unableToUpdate() = _UnabletoUpdate;
}
