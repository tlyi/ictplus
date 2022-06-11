import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/core/failures.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/core/value_validators.dart';
import 'package:ictplus/domain/data/profile/value_validators.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 16;

  factory Username(String input) {
    return Username._(validateMaxStringLength(input, maxLength)
        .flatMap(validateUsernameUnique)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateUsernameFormat));
  }

  const Username._(this.value);
}

class Course extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 80;

  factory Course(String input) {
    return Course._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const Course._(this.value);
}

class Bio extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 80;

  factory Bio(String input) {
    return Bio._(validateMaxStringLength(input, maxLength));
  }

  const Bio._(this.value);
}
