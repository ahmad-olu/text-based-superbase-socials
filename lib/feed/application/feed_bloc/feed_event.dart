part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.fetchPosts() = _FetchPosts;
  const factory FeedEvent.paginatePosts() = _PaginatePosts;
}
