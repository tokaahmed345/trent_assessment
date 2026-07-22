import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/router/app_router.dart';
import 'package:trent_assessment/core/utils/service_locator/service_locator.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
