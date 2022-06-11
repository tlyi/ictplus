import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/profile/value_objects.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile implements _$Profile {
  const Profile._();

  const factory Profile({
    required String photoUrl,
    required Username username,
    required Course course,
    required Bio bio,
    required List<String> modules,
    required String uuid,
    required List<String> forumsPosted,
    required List<String> following,
    required List<String> followedBy,
  }) = _Profile;

  factory Profile.empty() => Profile(
        photoUrl: '',
        username: Username(''),
        course: Course(''),
        bio: Bio(''),
        modules: [],
        uuid: '',
        forumsPosted: [],
        following: [],
        followedBy: [],
      );
}
