part of 'app_cubit.dart';

abstract class AppState extends Equatable {
  const AppState();
}

class AppInitial extends AppState {
  @override
  List<Object> get props => [];
}

class AppAuthenticated extends AppState {
  @override
  List<Object> get props => [];
}

class AppNotAuthenticated extends AppState {
  @override
  List<Object> get props => [];
}

class AppSessionExpired extends AppState {
  @override
  List<Object> get props => [];
}

class AppLoading extends AppState {
  @override
  List<Object> get props => [];
}

class AppFirstLaunch extends AppState {
  @override
  List<Object> get props => [];
}

class AppFailure extends AppState {
  const AppFailure(this.failure);

  final Failure failure;

  @override
  List<Object> get props => [];
}
