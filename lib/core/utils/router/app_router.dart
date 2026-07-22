import 'package:go_router/go_router.dart';
import 'package:trent_assessment/core/utils/router/routes_name.dart';
import 'package:trent_assessment/core/utils/widgets/main_navigation_bottom.dart';

class AppRouter {
  static final router = GoRouter(

    routes: [
      GoRoute(
        path: RoutesName.main,
        name: RoutesName.main,
        builder: (context, state) => MainNavigationScreen(),
      ),
    ],
  );
}
