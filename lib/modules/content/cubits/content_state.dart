part of 'content_cubit.dart';

abstract class ContentState extends Equatable {
  const ContentState();
}

class ContentInitial extends ContentState {
  @override
  List<Object> get props => [];
}

class ContentLoading extends ContentState {
  @override
  List<Object> get props => [];
}

class ContentLoaded extends ContentState {
  const ContentLoaded(this.content);

  final Content content;

  @override
  List<Object> get props => [content];
}

class ContentEmpty extends ContentState {
  @override
  List<Object> get props => [];
}

class ContentFailure extends ContentState {
  const ContentFailure(this.failure);

  final Failure failure;

  @override
  List<Object> get props => [failure];
}
