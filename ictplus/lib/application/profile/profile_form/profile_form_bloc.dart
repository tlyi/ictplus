import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/domain/data/profile/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

part 'profile_form_event.dart';
part 'profile_form_state.dart';
part 'profile_form_bloc.freezed.dart';

@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IProfileRepository _profileRepository;

  ProfileFormBloc(this._profileRepository) : super(ProfileFormState.initial());

  @override
  Stream<ProfileFormState> mapEventToState(
    ProfileFormEvent event,
  ) async* {
    yield* event.map(photoChanged: (e) async* {
      final failureOrString = await _profileRepository.uploadPhoto(e.photo);
      String url = state.photoUrl.getOrElse(() => constants.ERROR_DP);
      failureOrString.fold(
        (f) {
          url = constants.ERROR_DP;
          print(f);
        },
        (s) {
          url = s;
        },
      );
      yield state.copyWith(
          photoUrl: failureOrString,
          profile: state.profile.copyWith(photoUrl: url));
    }, usernameChanged: (e) async* {
      String username = '';
      final failureOrUnique =
          await _profileRepository.verifyUsernameUnique(e.usernameStr);
      failureOrUnique.fold(
          (f) => print('Error with server, uhm not sure how to handle this'),
          (unique) {
        if (unique) {
          username = e.usernameStr;
        } else if (state.currentUsername == e.usernameStr) {
          username = e.usernameStr;
        } else {
          username = ' not unique ';
        }
      });
      yield state.copyWith(
        usernameChanged: true,
        profile: state.profile.copyWith(username: Username(username)),
      );
    }, courseChanged: (e) async* {
      yield state.copyWith(
        profile: state.profile.copyWith(course: Course(e.courseStr)),
      );
    }, bioChanged: (e) async* {
      yield state.copyWith(
        profile: state.profile.copyWith(bio: Bio(e.bioStr)),
      );
    }, saved: (e) async* {
      if (state.usernameChanged) {
        if (state.profile.username.isValid()) {
          String username = '';
          final failureOrUnique = await _profileRepository
              .verifyUsernameUnique(state.profile.username.getOrCrash());
          failureOrUnique.fold(
              (f) =>
                  print('Error with server, uhm not sure how to handle this'),
              (unique) {
            if (!unique) {
              username = ' not unique ';
            }
          });
          print(username);
          if (username != '') {
            yield state.copyWith(
              isSaving: false,
              showErrorMessages: true,
              profile:
                  state.profile.copyWith(username: Username(' not unique ')),
            );
          }
        }
      }

      Either<DataFailure, Unit>? failureOrSuccess;
      final bool isUsernameValid = state.profile.username.isValid();
      print(isUsernameValid);
      final bool isCourseValid = state.profile.course.isValid();
      final bool isBioValid = state.profile.bio.isValid();
      final bool isProfileValid =
          isUsernameValid && isCourseValid && isBioValid;

      if (isProfileValid) {
        final uuid = await _profileRepository.getUserId();

        yield state.copyWith(
          profile: state.profile.copyWith(
              photoUrl: state.photoUrl.getOrElse(() => constants.ERROR_DP)),
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _profileRepository.create(state.profile
            .copyWith(
                uuid: uuid,
                photoUrl: state.photoUrl.getOrElse(() => constants.ERROR_DP)));
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, getProfile: (e) async* {
      Either<DataFailure, Profile> failureOrSuccess;
      failureOrSuccess = await _profileRepository.readOwnProfile();
      final profile = failureOrSuccess.getOrElse(() => Profile.empty());
      yield state.copyWith(
        isLoading: false,
        currentProfile: failureOrSuccess,
        profile: profile,
        currentUsername: profile.username.getOrCrash(),
        photoUrl: right(profile.photoUrl),
      );
    }, searchedModule: (e) async* {
      final moduleSuggestions =
          await _profileRepository.searchModulesByModuleCode(e.searchStr);

      yield state.copyWith(
        moduleSuggestions: moduleSuggestions,
      );
    }, addedModule: (e) async* {
      yield state.copyWith(refreshTags: false);
      List<String> moduleList = state.profile.modules;
      moduleList.add(e.moduleStr);

      yield state.copyWith(
        profile: state.profile.copyWith(modules: moduleList),
        refreshTags: true,
      );
    }, removedModule: (e) async* {
      yield state.copyWith(refreshTags: false);
      List<String> moduleList = state.profile.modules;
      if (moduleList.length == 1) {
        moduleList = [];
      } else {
        moduleList.removeAt(e.index);
      }

      yield state.copyWith(
        profile: state.profile.copyWith(modules: moduleList),
        refreshTags: true,
      );
    });
  }
}
