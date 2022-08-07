class Endpoints {
  Endpoints._();

  //App API Base Url
  static const String baseUrl = 'https://conceptive.tech/api/';

  // User
  static const String login = 'login/';
  static const String register = 'register/student/';
  static const String refresh = '${login}refresh/';
  static const String users = 'users/';
  static const String userInfo = '${users}me';

  // Courses
  static const String courses = 'courses/';
  static const String curriculum = 'curriculum/';
  static const String content = 'content/';
  static const String sections = 'sections/';
  static const String enroll = 'enroll/';
}
