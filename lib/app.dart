import 'package:flutter/material.dart';
import 'package:tinder_like/theme.dart';
import 'router.dart' as router;
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      onGenerateRoute: router.genetateRoute,
      initialRoute: router.home,
    );
  }
}
