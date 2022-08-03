part of 'courses_cubit.dart';

abstract class CoursesState extends Equatable {
  const CoursesState();
}

class CoursesInitial extends CoursesState {
  @override
  List<Object> get props => [];
}

class CoursesLoading extends CoursesState {
  @override
  List<Object> get props => [];
}

class CoursesLoaded extends CoursesState {
  const CoursesLoaded(this.courses);

  final List<Course> courses;

  @override
  List<Object> get props => [courses];
}

class CoursesEmpty extends CoursesState {
  @override
  List<Object> get props => [];
}

class CoursesFailure extends CoursesState {
  const CoursesFailure(this.failure);

  final Failure failure;

  @override
  List<Object> get props => [failure];
}
