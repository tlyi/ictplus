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

class EventLocation extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EventLocation(String input) {
    assert(input != null);
    return EventLocation._(validateStringNotEmpty(input));
  }

  const EventLocation._(this.value);
}

//TODO: Date and Time should not be of type string
class EventTime extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EventTime(String input) {
    assert(input != null);
    return EventTime._(validateStringNotEmpty(input));
  }

  const EventTime._(this.value);
}

class EventDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EventDate(String input) {
    assert(input != null);
    return EventDate._(validateStringNotEmpty(input));
  }

  const EventDate._(this.value);
}
