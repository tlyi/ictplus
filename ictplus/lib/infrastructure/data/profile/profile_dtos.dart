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
    required String rank,
    required String fullName,
    required String uuid,
  }) = _ProfileDto;

  factory ProfileDto.fromDomain(Profile profile) {
    return ProfileDto(
      photoUrl: profile.photoUrl,
      rank: profile.rank,
      fullName: profile.fullName,
      uuid: profile.uuid,
    );
  }

  Profile toDomain() {
    return Profile(
      photoUrl: photoUrl,
      rank: rank,
      fullName: fullName,
      uuid: uuid,
    );
  }

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  factory ProfileDto.fromFirestore(DocumentSnapshot doc) {
    return ProfileDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
