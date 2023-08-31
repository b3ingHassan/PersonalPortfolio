import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

import 'landing_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
        primaryColor: AppColors.primary,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const LandingPage(),
    );
  }
}
