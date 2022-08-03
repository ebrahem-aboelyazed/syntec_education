part of 'curriculum_cubit.dart';

abstract class CurriculumState extends Equatable {
  const CurriculumState();
}

class CurriculumInitial extends CurriculumState {
  @override
  List<Object> get props => [];
}

class CurriculumLoading extends CurriculumState {
  @override
  List<Object> get props => [];
}

class CurriculumRefreshing extends CurriculumState {
  @override
  List<Object> get props => [];
}

class CurriculumLoaded extends CurriculumState {
  const CurriculumLoaded(this.curriculum);

  final Curriculum curriculum;

  @override
  List<Object> get props => [];
}

class CurriculumFailure extends CurriculumState {
  const CurriculumFailure(this.failure);

  final Failure failure;

  @override
  List<Object> get props => [failure];
}
