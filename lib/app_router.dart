import 'package:dobrosport/features/auth/pages/fund_selection_screen.dart';
import 'package:dobrosport/features/auth/pages/login_screen.dart';
import 'package:dobrosport/features/auth/pages/profile_health_info_screen.dart';
import 'package:dobrosport/features/auth/pages/profile_info_screen.dart';
import 'package:dobrosport/features/auth/pages/signup_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/fund-selection-screen',
    routes: [
      GoRoute(
        name: 'signUpScreen',
        path: '/sign-up-screen',
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        name: 'loginScreen',
        path: '/login-screen',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: 'profileInfoScreen',
        path: '/profile-info-screen',
        builder: (context, state) => const ProfileInfoScreen(),
      ),
      GoRoute(
        name: 'profileHealthInfoScreen',
        path: '/profile-health-info-screen',
        builder: (context, state) => const ProfileHealthInfoScreen(),
      ),
      GoRoute(
        name: 'fundSelectionScreen',
        path: '/fund-selection-screen',
        builder: (context, state) => const FundSelectionScreen(),
      ),
    ],
  );
}
