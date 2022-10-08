part of 'all_feed_bloc.dart';

@freezed
class AllFeedEvent with _$AllFeedEvent {
  const factory AllFeedEvent.fetchAllPost() = _FetchAllPost;
  const factory AllFeedEvent.updateAllTextPost(List<TextPost?> textPost) =
      _UpdateAllTextPost;
  const factory AllFeedEvent.updateAllComicPost(
    List<ComicPost?> comicPost,
  ) = UpdateAllComicPost;
}
