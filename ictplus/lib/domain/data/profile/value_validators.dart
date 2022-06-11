import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateUsernameFormat(String input) {
  // ignore: unnecessary_raw_strings
  const usernameRegex = r'^[a-z0-9._]*$';
  if (RegExp(usernameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsernameFormat(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsernameUnique(String input) {
  if (input == ' not unique ') {
    return left(ValueFailure.usernameTaken(failedValue: input));
  } else {
    return right(input);
  }
}
