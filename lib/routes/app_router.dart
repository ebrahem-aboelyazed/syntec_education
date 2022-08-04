import 'package:auto_route/auto_route.dart';
import 'package:education/modules/app/app.dart';
import 'package:education/modules/content/content.dart';
import 'package:education/modules/courses/courses.dart';
import 'package:education/modules/courses/views/courses_wrapper_page.dart';
import 'package:education/modules/curriculum/curriculum.dart';
import 'package:education/modules/home/home.dart';
import 'package:education/modules/learning/views/learning_progress_page.dart';
import 'package:education/modules/user/user.dart';
import 'package:education/modules/user/views/profile/edit_profile_page.dart';
import 'package:education/routes/paths.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: HomePage,
      path: '/',
      children: [
        AutoRoute(
          page: CoursesWrapperPage,
          path: '',
          children: [
            AutoRoute(
              page: CoursesPage,
              path: '',
              children: [
                AutoRoute(
                  page: CourseDetailsPage,
                  path: Paths.course,
                  children: [
                    AutoRoute(
                      page: CurriculumPage,
                      path: Paths.curriculum,
                      children: [
                        AutoRoute(page: ContentPage, path: Paths.content),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        AutoRoute(page: LearningProgressPage, path: ''),
        AutoRoute(page: ProfilePage, path: Paths.profile),
      ],
    ),
    AutoRoute(page: LoginPage, path: Paths.login),
    AutoRoute(page: SignUpPage, path: Paths.signUp),
    AutoRoute(page: EditProfilePage, path: Paths.editProfile),
    AutoRoute(page: IntroPage, path: ''),
  ],
)
class $AppRouter {}
