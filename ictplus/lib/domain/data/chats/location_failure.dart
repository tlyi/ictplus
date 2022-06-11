import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failure.freezed.dart';

@freezed
abstract class LocationFailure with _$LocationFailure {
  const factory LocationFailure.unexpected() = _Unexpected;
  const factory LocationFailure.serviceNotEnabled() = _ServiceNotEnabled;
  const factory LocationFailure.insufficientPermission() =
      _InSufficientPermission;
  const factory LocationFailure.permissionDeniedForever() =
      _PermissionDeniedForever;
}
