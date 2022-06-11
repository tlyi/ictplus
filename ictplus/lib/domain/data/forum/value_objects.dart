import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/core/failures.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/core/value_validators.dart';

class Title extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 50;

  factory Title(String input) {
    return Title._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const Title._(this.value);
}

class Body extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 200;

  factory Body(String input) {
    return Body._(validateMaxStringLength(input, maxLength));
  }

  const Body._(this.value);
}

class PollOption extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 40;

  factory PollOption(String input) {
    return PollOption._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const PollOption._(this.value);
}

class CommentText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory CommentText(String input) {
    return CommentText._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const CommentText._(this.value);
}
