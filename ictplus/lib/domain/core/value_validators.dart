import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const idRegex = r'^[stfg]\d{7}[a-z]@u.nus.edu$';

  if (RegExp(idRegex).hasMatch(input.toLowerCase())) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyString(failedValue: input));
  }
}
