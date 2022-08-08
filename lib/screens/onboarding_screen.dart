import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/onboarding_screen.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20 * MediaQuery.of(context).size.height / 926,
              horizontal: 20 * MediaQuery.of(context).size.width / 428),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            RichText(
              text: TextSpan(
                text: 'Welcome to ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 15),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Squid Games Shop',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 15),
                  ),
                  TextSpan(
                    text:
                        '. Buy your favorite Masks, Merch and play games that excites you!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 15),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10 * MediaQuery.of(context).size.height / 926),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFBA1440)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15 *
                                MediaQuery.of(context).size.height /
                                926)))),
                onPressed: () {},
                child: Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: 15),
                )))
          ]),
        ),
      ),
    );
  }
}
