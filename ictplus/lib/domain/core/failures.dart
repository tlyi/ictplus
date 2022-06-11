import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.invalidUsernameFormat({
    required T failedValue,
  }) = InvalidUsernameFormat<T>;
  const factory ValueFailure.usernameTaken({
    required T failedValue,
  }) = UsernameTaken<T>;
  const factory ValueFailure.emptyString({
    required T failedValue,
  }) = EmptyString<T>;
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;
}
