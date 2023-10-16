import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_travel_app/screens/splashs/Splash_screen1.dart';
import 'package:mobile_travel_app/screens/splashs/spash_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash_screen2': (context) => SplashScreen2(),
      },
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      )),
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
    );
  }
}
