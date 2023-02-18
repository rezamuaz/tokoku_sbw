import 'dart:async';

import 'package:flutter/material.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
  // required String environment,
  // required FirebaseOptions firebaseOptions,
) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(await builder());
}
