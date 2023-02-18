import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tokoku_sbw/src/pages/dashboard/dashboard.dart';
import 'package:tokoku_sbw/src/pages/splash/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    const String splash = '/splash';
    // const String welcome = '/welcome';
    const String dashboard = '/dash';
    // late final args = settings.arguments as String;
    // late final argsInt = settings.arguments as int;
    // late final multiArgs = settings.arguments as List<dynamic>;
    switch (settings.name) {
      case splash:
        return PageTransition(
            child: const SplashScreen(),
            type: PageTransitionType.leftToRight,
            reverseDuration: const Duration(seconds: 2));
      // case welcome:
      //   return PageTransition(
      //       child: const WelcomeScreen(), type: PageTransitionType.leftToRight);
      case dashboard:
        return PageTransition(
            child: const Dashboard(), type: PageTransitionType.fade);

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(title: const Text('ERROR'), centerTitle: true),
        body: const Center(
          child: Text('Page not Found'),
        ),
      );
    });
  }
}
