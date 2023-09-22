import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_project/constants/color_constants.dart';
import 'package:sample_project/screens/my_home_page.dart';
import 'package:sample_project/screens/otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Albert',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.priPNK700),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const MyHomePage(),
            routes: [
              GoRoute(
                path: 'otp',
                builder: (context, state) => OTPScreen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
