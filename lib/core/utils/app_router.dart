import 'package:go_router/go_router.dart';
import 'package:smart_home/Feature/Success/success_screen.dart';
import 'package:smart_home/Feature/login/presentaion/views/login_screen.dart';
import 'package:smart_home/Feature/onboarding/presenation/views/on_boarding_screen.dart';
import 'package:smart_home/Feature/register/presentaion/views/register_screen.dart';
import 'package:smart_home/Feature/verification/verification_screen.dart';

class AppRouter {
  static const initialPage = '/';
  static const register = '/registerScreen';
  static const login = '/loginScreen';
  static const success = "/successScreen";
  static const verifiy = '/verificationScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: initialPage,
        builder: (context, state) {
          return const OnBoardingScreen();
        },
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: success,
        builder: (context, state) => const SuccessScreen(),
      ),
      GoRoute(
        path: verifiy,
        builder: (context, state) => const VerificationScreen(),
      )
    ],
  );
}
