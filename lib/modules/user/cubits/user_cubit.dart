import 'package:bloc/bloc.dart';
import 'package:education/data/data.dart';
import 'package:education/helpers/helpers.dart';
import 'package:education/modules/user/user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart' show GlobalKey, FormState;

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  final UserService _userService = UserService.instance;
  final HiveHelper _hiveHelper = HiveHelper.instance;

  final GlobalKey<FormState> loginFormKey = GlobalKey();
  final GlobalKey<FormState> signUpFormKey = GlobalKey();

  Future<void> loginUser({required LoginModel model}) async {
    if (loginFormKey.currentState != null &&
        loginFormKey.currentState!.validate()) {
      emit(UserLoading());

      /// First request to login user
      final response = await _userService.loginUser(model: model);
      await response.fold(onFailure, (credentials) async {
        await _hiveHelper.saveUserCredentials(credentials);

        /// Second request to get user info with its credentials
        await getUserInfo();
      });
    }
  }

  Future<void> registerUser({required SignUpModel model}) async {
    if (signUpFormKey.currentState != null &&
        signUpFormKey.currentState!.validate()) {
      emit(UserLoading());

      /// First request to register user
      final response = await _userService.registerUser(model: model);
      await response.fold(onFailure, (user) async {
        /// Second request to login user and retrieve credentials
        final data = await _userService.loginUser(
          model: LoginModel(username: model.username, password: model.password),
        );
        await data.fold(onFailure, (credentials) async {
          await _hiveHelper.saveUserCredentials(credentials);
          await _hiveHelper.saveUserData(user);
          emit(UserRegistered());
        });
      });
    }
  }

  Future<void> getUserInfo() async {
    final response = await _userService.getUserInfo();
    return response.fold(
      (failure) async {
        if (failure.statusCode != null && failure.statusCode == 401) {
          await _hiveHelper.clearUserData();
        }
        await onFailure(failure);
      },
      (user) async {
        await _hiveHelper.saveUserData(user);
        emit(UserLoggedIn());
      },
    );
  }

  Future<void> onFailure(Failure failure) async {
    emit(UserFailure(failure));
  }
}
