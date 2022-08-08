import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squid_games_shop/screens/item_screen.dart';
import 'package:squid_games_shop/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Squid Game Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: const Color(0xFFBA1440)),
        headline2: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF5F5F5F)),
        bodyText1: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF5F5F5F)),
      )),
      home: const OnboardingScreen(),
    );
  }
}
