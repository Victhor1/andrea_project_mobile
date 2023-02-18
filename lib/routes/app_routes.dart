import 'package:andrea_project_mobile/bindings/app_bindings.dart';
import 'package:andrea_project_mobile/screens/auth/forgot_password_screen.dart';
import 'package:andrea_project_mobile/screens/auth/login_screen.dart';
import 'package:get/get.dart';

List<GetPage> appRoutes() {
  Duration transitionDuration = const Duration(milliseconds: 500);

  return [
    //AuthBindings
    GetPage(
      name: '/login',
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: '/forgot-password',
      page: () => const ForgotPasswordScreen(),
      binding: AuthBinding(),
      transition: Transition.downToUp,
      transitionDuration: transitionDuration,
    ),
  ];
}
