import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

import 'landing_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Portdolio',
      theme: ThemeData(
        fontFamily: "Poppins",
        primaryColor: AppColors.bgColor1,
      ),
      home: const LandingPage(),
    );
  }
}
