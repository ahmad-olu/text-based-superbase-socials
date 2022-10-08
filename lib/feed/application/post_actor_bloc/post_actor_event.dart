part of 'post_actor_bloc.dart';

@freezed
class PostActorEvent with _$PostActorEvent {
  const factory PostActorEvent.saveTextPost(TextPost post) = _SaveTextPost;
  const factory PostActorEvent.saveComicPost(ComicPost post) = _SaveComicPost;
}
