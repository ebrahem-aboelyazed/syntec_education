// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:education/modules/app/app.dart' as _i1;
import 'package:education/modules/content/content.dart' as _i9;
import 'package:education/modules/courses/courses.dart' as _i7;
import 'package:education/modules/courses/views/courses_wrapper_page.dart'
    as _i5;
import 'package:education/modules/curriculum/curriculum.dart' as _i8;
import 'package:education/modules/home/home.dart' as _i2;
import 'package:education/modules/learning/views/learning_progress_page.dart'
    as _i6;
import 'package:education/modules/user/user.dart' as _i3;
import 'package:education/modules/user/views/profile/edit_profile_page.dart'
    as _i4;
import 'package:flutter/material.dart' as _i11;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.SignUpPage(key: args.key));
    },
    EditProfileRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.EditProfilePage());
    },
    IntroRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.IntroPage());
    },
    CoursesWrapperRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.CoursesWrapperPage());
    },
    LearningProgressRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: _i6.LearningProgressPage());
    },
    ProfileRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.ProfilePage());
    },
    CoursesRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: _i7.CoursesPage());
    },
    CourseDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseDetailsRouteArgs>(
          orElse: () =>
              CourseDetailsRouteArgs(courseId: pathParams.getInt('course_id')));
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i7.CourseDetailsPage(courseId: args.courseId, key: args.key));
    },
    CurriculumRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CurriculumRouteArgs>(
          orElse: () => const CurriculumRouteArgs());
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i8.CurriculumPage(
              courseId: pathParams.getInt('course_id'), key: args.key));
    },
    ContentRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ContentRouteArgs>(
          orElse: () =>
              ContentRouteArgs(contentId: pathParams.getInt('content_id')));
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i9.ContentPage(contentId: args.contentId, key: args.key));
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashRoute.name, path: '/'),
        _i10.RouteConfig(HomeRoute.name, path: '/', children: [
          _i10.RouteConfig(CoursesWrapperRoute.name,
              path: '',
              parent: HomeRoute.name,
              children: [
                _i10.RouteConfig(CoursesRoute.name,
                    path: '',
                    parent: CoursesWrapperRoute.name,
                    children: [
                      _i10.RouteConfig(CourseDetailsRoute.name,
                          path: 'course/:course_id',
                          parent: CoursesRoute.name,
                          children: [
                            _i10.RouteConfig(CurriculumRoute.name,
                                path: 'curriculum',
                                parent: CourseDetailsRoute.name,
                                children: [
                                  _i10.RouteConfig(ContentRoute.name,
                                      path: 'content/:content_id',
                                      parent: CurriculumRoute.name)
                                ])
                          ])
                    ])
              ]),
          _i10.RouteConfig(LearningProgressRoute.name,
              path: '', parent: HomeRoute.name),
          _i10.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeRoute.name)
        ]),
        _i10.RouteConfig(LoginRoute.name, path: '/login'),
        _i10.RouteConfig(SignUpRoute.name, path: '/sign_up'),
        _i10.RouteConfig(EditProfileRoute.name, path: '/edit_profile'),
        _i10.RouteConfig(IntroRoute.name, path: '')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i11.Key? key})
      : super(LoginRoute.name, path: '/login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i10.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i11.Key? key})
      : super(SignUpRoute.name,
            path: '/sign_up', args: SignUpRouteArgs(key: key));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.EditProfilePage]
class EditProfileRoute extends _i10.PageRouteInfo<void> {
  const EditProfileRoute()
      : super(EditProfileRoute.name, path: '/edit_profile');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i1.IntroPage]
class IntroRoute extends _i10.PageRouteInfo<void> {
  const IntroRoute() : super(IntroRoute.name, path: '');

  static const String name = 'IntroRoute';
}

/// generated route for
/// [_i5.CoursesWrapperPage]
class CoursesWrapperRoute extends _i10.PageRouteInfo<void> {
  const CoursesWrapperRoute({List<_i10.PageRouteInfo>? children})
      : super(CoursesWrapperRoute.name, path: '', initialChildren: children);

  static const String name = 'CoursesWrapperRoute';
}

/// generated route for
/// [_i6.LearningProgressPage]
class LearningProgressRoute extends _i10.PageRouteInfo<void> {
  const LearningProgressRoute() : super(LearningProgressRoute.name, path: '');

  static const String name = 'LearningProgressRoute';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.CoursesPage]
class CoursesRoute extends _i10.PageRouteInfo<void> {
  const CoursesRoute({List<_i10.PageRouteInfo>? children})
      : super(CoursesRoute.name, path: '', initialChildren: children);

  static const String name = 'CoursesRoute';
}

/// generated route for
/// [_i7.CourseDetailsPage]
class CourseDetailsRoute extends _i10.PageRouteInfo<CourseDetailsRouteArgs> {
  CourseDetailsRoute(
      {required int courseId,
      _i11.Key? key,
      List<_i10.PageRouteInfo>? children})
      : super(CourseDetailsRoute.name,
            path: 'course/:course_id',
            args: CourseDetailsRouteArgs(courseId: courseId, key: key),
            rawPathParams: {'course_id': courseId},
            initialChildren: children);

  static const String name = 'CourseDetailsRoute';
}

class CourseDetailsRouteArgs {
  const CourseDetailsRouteArgs({required this.courseId, this.key});

  final int courseId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'CourseDetailsRouteArgs{courseId: $courseId, key: $key}';
  }
}

/// generated route for
/// [_i8.CurriculumPage]
class CurriculumRoute extends _i10.PageRouteInfo<CurriculumRouteArgs> {
  CurriculumRoute({_i11.Key? key, List<_i10.PageRouteInfo>? children})
      : super(CurriculumRoute.name,
            path: 'curriculum',
            args: CurriculumRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'CurriculumRoute';
}

class CurriculumRouteArgs {
  const CurriculumRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'CurriculumRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.ContentPage]
class ContentRoute extends _i10.PageRouteInfo<ContentRouteArgs> {
  ContentRoute({required int contentId, _i11.Key? key})
      : super(ContentRoute.name,
            path: 'content/:content_id',
            args: ContentRouteArgs(contentId: contentId, key: key),
            rawPathParams: {'content_id': contentId});

  static const String name = 'ContentRoute';
}

class ContentRouteArgs {
  const ContentRouteArgs({required this.contentId, this.key});

  final int contentId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'ContentRouteArgs{contentId: $contentId, key: $key}';
  }
}
