
import 'package:flutter/material.dart';
import 'package:tokoku_sbw/src/core/route/router.dart';
import 'package:tokoku_sbw/src/core/theme/theme.dart';
import 'package:tokoku_sbw/src/pages/splash/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeCollection,
        home: const SplashScreen(),
        onGenerateRoute: RouteGenerator.generateRoute);
  }
}
