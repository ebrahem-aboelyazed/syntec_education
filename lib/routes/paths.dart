abstract class Paths {
  Paths._();

  // User Paths
  static const initial = '/';
  static const login = '/login';
  static const signUp = '/sign_up';
  static const profile = 'profile';
  static const editProfile = '/edit_profile';

  // Courses Paths
  static const course = 'course/:course_id';
  static const curriculum = 'curriculum';
  static const content = 'content/:content_id';
}
