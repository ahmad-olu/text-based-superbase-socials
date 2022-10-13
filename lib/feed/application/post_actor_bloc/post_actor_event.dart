part of 'post_actor_bloc.dart';

@freezed
class PostActorEvent with _$PostActorEvent {
  const factory PostActorEvent.savePost(Post post) = _SavePost;
}
