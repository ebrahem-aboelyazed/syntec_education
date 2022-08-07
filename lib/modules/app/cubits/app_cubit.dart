import 'package:bloc/bloc.dart';
import 'package:education/data/data.dart';
import 'package:education/helpers/helpers.dart';
import 'package:equatable/equatable.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  final HiveHelper _hiveHelper = HiveHelper.instance;

  Future<void> initialize() async {
    try {
      /// Initializing local hive database
      await _hiveHelper.initializeHiveAndAdapters();
      await _hiveHelper.initializeUserBox();
      await _hiveHelper.initializeCredentialsBox();
      await _hiveHelper.initializeSettingsBox();

      /// Checking States of the app
      await checkStates();

      /// Observing authentication status
      await observeAuthentication();
    } catch (e) {
      emit(AppFailure(Failure(message: e.toString())));
    }
  }

  Future<void> checkStates() async {
    final hasShownIntro = await _hiveHelper.hasShownIntro;
    if (hasShownIntro) {
      final hasLoggedIn = _hiveHelper.hasLoggedIn;
      emit(hasLoggedIn ? AppAuthenticated() : AppNotAuthenticated());
    } else {
      emit(AppFirstLaunch());
    }
  }

  Future<void> observeAuthentication() async {
    _hiveHelper.userBox.watch().listen((event) {
      final value = event.value;
      print('Value =====>$value');
      if (value == null) {
        emit(AppSessionExpired());
        emit(AppNotAuthenticated());
      }
    });
  }
}
