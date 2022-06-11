import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/domain/data/profile/value_objects.dart';

part 'profile_dtos.freezed.dart';
part 'profile_dtos.g.dart';

@freezed
abstract class ProfileDto implements _$ProfileDto {
  const ProfileDto._();

  const factory ProfileDto({
    required String photoUrl,
    required String username,
    required String course,
    required String bio,
    required List<String> modules,
    required String uuid,
    required List<String> forumsPosted,
    required List<String> following,
    required List<String> followedBy,
  }) = _ProfileDto;

  factory ProfileDto.fromDomain(Profile profile) {
    return ProfileDto(
      photoUrl: profile.photoUrl,
      username: profile.username.getOrCrash(),
      course: profile.course.getOrCrash(),
      bio: profile.bio.getOrCrash(),
      modules: profile.modules,
      uuid: profile.uuid,
      forumsPosted: profile.forumsPosted,
      following: profile.following,
      followedBy: profile.followedBy,
    );
  }

  Profile toDomain() {
    return Profile(
      photoUrl: photoUrl,
      username: Username(username),
      course: Course(course),
      bio: Bio(bio),
      modules: modules,
      uuid: uuid,
      forumsPosted: forumsPosted,
      following: following,
      followedBy: followedBy,
    );
  }

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  factory ProfileDto.fromFirestore(DocumentSnapshot doc) {
    return ProfileDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
