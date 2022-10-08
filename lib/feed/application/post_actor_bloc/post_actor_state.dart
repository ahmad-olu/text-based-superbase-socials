part of 'post_actor_bloc.dart';

@freezed
class PostActorState with _$PostActorState {
  const factory PostActorState.initial() = _Initial;
  const factory PostActorState.actionInProgress() = _ActionInProgress;
  const factory PostActorState.failure(Exception exception) = _Failure;
  const factory PostActorState.success() = _Success;
}
