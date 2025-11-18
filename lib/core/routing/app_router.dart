import 'package:flutter/material.dart';
import 'package:nakhla/core/routing/routes.dart';
import 'package:nakhla/features/home_screen/presentation/views/home_screen.dart';
import 'package:nakhla/features/login_screen/presentation/views/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments variable can be used to pass data between screens
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
