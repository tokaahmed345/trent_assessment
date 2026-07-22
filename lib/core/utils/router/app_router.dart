
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trent_assessment/core/utils/router/routes_name.dart';

class AppRouter {
  static final router = GoRouter(
    // redirect: (context, state) {
    //   final user = FirebaseAuth.instance.currentUser;
      
    //   if (user != null && state.name != RoutesName.home) {
    //     return RoutesName.home;
    //   }

    //   if (user == null && state.name == RoutesName.home) {
    //     return RoutesName.logIn;
    //   }

    //   return null;
    // },
    routes: [
      GoRoute(
        path: RoutesName.splash,
        name: RoutesName.splash,
        builder: (context, state) =>  Container(),
      ),
     
    ],
  );
}
