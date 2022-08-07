part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {
  @override
  List<Object> get props => [];
}

class UserRegistered extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoggedIn extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoggedOut extends UserState {
  @override
  List<Object> get props => [];
}

class UserFailure extends UserState {
  const UserFailure(this.failure);

  final Failure failure;

  @override
  List<Object> get props => [failure];
}
