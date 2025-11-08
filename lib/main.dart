import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'screens/splash_screen_1.dart';
import 'screens/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ari Purwo Aji - 1123150126',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const SplashScreen1(),

      routes: {'/sign_in': (context) => const SignInScreen()},
    );
  }
}
