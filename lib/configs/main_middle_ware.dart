/*
import 'package:education/helpers/helpers.dart';
import 'package:education/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (HiveHelper.instance.hasLoggedIn) {
      return super.redirect(route);
    } else {
      return const RouteSettings(name: Paths.login);
    }
  }
}
*/
