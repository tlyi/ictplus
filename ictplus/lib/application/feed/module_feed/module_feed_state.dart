part of 'module_feed_bloc.dart';

@freezed
class ModuleFeedState with _$ModuleFeedState {
  const factory ModuleFeedState.initial() = _Initial;
  const factory ModuleFeedState.loadInProgress() = _LoadInProgress;
  const factory ModuleFeedState.loadSuccess(
      List<ForumPost> forums, bool hasMore, bool isRetrieving) = _LoadSuccess;
  const factory ModuleFeedState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
