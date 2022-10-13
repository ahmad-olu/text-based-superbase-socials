part of 'all_feed_bloc.dart';

@freezed
class AllFeedEvent with _$AllFeedEvent {
  const factory AllFeedEvent.fetchAllPost() = _FetchAllPost;
  const factory AllFeedEvent.updateAllPost(List<Post?> post) = _UpdateAllPost;
}
