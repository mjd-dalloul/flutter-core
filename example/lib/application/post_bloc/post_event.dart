part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.postRequested(bool fromServer) = PostRequested;
}
