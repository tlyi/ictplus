import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/profile/value_objects.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile implements _$Profile {
  const Profile._();

  const factory Profile({
    required String photoUrl,
    required String rank,
    required String fullName,
    required String uuid,
  }) = _Profile;

  factory Profile.empty() => Profile(
        photoUrl: '',
        rank: '',
        fullName: '',
        uuid: '',
      );
}
