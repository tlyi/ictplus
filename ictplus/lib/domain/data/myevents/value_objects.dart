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

class EventLocation extends ValueObject<String> {
  static const List<String> predefinedLocations = [
    'Maju Camp',
    'Khatib Camp',
    'Bedok Camp',
    'Pasir Laba Camp',
  ];

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
