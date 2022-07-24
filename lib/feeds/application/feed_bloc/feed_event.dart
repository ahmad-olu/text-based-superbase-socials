part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.fetchTextPosts() = _FetchTextPosts;
  const factory FeedEvent.fetchPicturePosts() = _FetchPicturePosts;
  const factory FeedEvent.paginateTextPosts() = _PaginateTextPosts;
  const factory FeedEvent.paginatePicturePosts() = _PaginatePicturePosts;
}
