import 'package:digikala/routes/home.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const HomeRoute(),
      duration: 4000,
      imageSize: 300,
      imageSrc: 'assets/logo.png',
      backgroundColor: Colors.white,
    );
  }
}
