import 'package:dobrosport/common/widgets/bottom_nav_bar_widget.dart';
import 'package:dobrosport/features/activity/pages/activity_screen.dart';
import 'package:dobrosport/features/auth/pages/fund_selection_screen.dart';
import 'package:dobrosport/features/auth/pages/login_screen.dart';
import 'package:dobrosport/features/auth/pages/profile_health_info_screen.dart';
import 'package:dobrosport/features/auth/pages/profile_info_screen.dart';
import 'package:dobrosport/features/auth/pages/signup_screen.dart';
import 'package:dobrosport/features/challenges/pages/challenges_screen.dart';
import 'package:dobrosport/features/goodness/pages/goodness_screen.dart';
import 'package:dobrosport/features/rating/pages/rating_screen.dart';
import 'package:dobrosport/features/start/pages/start_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/login-screen',
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
      ShellRoute(
        builder: (context, state, child) {
          return BottomNavBarWidget(child: child);
        },
        routes: [
          GoRoute(
            path: '/activity-screen',
            name: 'activityScreen',
            builder: (context, state) => const ActivityScreen(),
          ),
          GoRoute(
            path: '/goodness-screen',
            name: 'goodnessScreen',
            builder: (context, state) => const GoodnessScreen(),
          ),
          GoRoute(
            path: '/start-screen',
            name: 'startScreen',
            builder: (context, state) => const StartScreen(),
          ),
          GoRoute(
            path: '/rating-screen',
            name: 'ratingScreen',
            builder: (context, state) => const RatingScreen(),
          ),
          GoRoute(
            path: '/challenges-screen',
            name: 'challengesScreen',
            builder: (context, state) => const ChallengesScreen(),
          ),
        ],
      ),
    ],
  );
}
