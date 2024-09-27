import 'package:ecommerce_app/pages/homepage.dart';
import 'package:ecommerce_app/pages/product_details.dart';
import 'package:ecommerce_app/pages/splash_screen.dart';
import 'package:ecommerce_app/pages/loginpage.dart';
import 'package:ecommerce_app/pages/themes/themedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashWithDelay(),
      theme: primarytheme,
      routes: {
        '/loginpage': (context) => const LoginPage(),
        '/homepage': (context) => const Home(),
        '/product_details': (context) => const ProductDetail()
      },
    );
  }
}

class SplashWithDelay extends StatefulWidget {
  const SplashWithDelay({Key? key}) : super(key: key);

  @override
  State<SplashWithDelay> createState() => _SplashWithDelayState();
}

class _SplashWithDelayState extends State<SplashWithDelay> {
  @override
  void initState() {
    super.initState();
    // Use a delayed future to navigate to the second page after 1 second
    Future.delayed(const Duration(seconds: 1), () {
      // Ensure navigation happens after the current frame is built
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/loginpage');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
