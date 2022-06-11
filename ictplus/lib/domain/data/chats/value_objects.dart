import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/core/failures.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/core/value_validators.dart';

class MessageBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 4096;

  factory MessageBody(String input) {
    return MessageBody._(validateMaxStringLength(input, maxLength));
  }

  const MessageBody._(this.value);
}

class IntroMessage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory IntroMessage(String input) {
    return IntroMessage._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const IntroMessage._(this.value);
}
