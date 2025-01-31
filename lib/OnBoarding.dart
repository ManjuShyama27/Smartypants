import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/smartypantsbg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text('SMARTY\nPANTS',
                textAlign: TextAlign.center,
                style: GoogleFonts.lilitaOne(
                    fontSize: 65, fontWeight: FontWeight.bold)),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Center(
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/dashboard'),
                child: Container(
                  margin: EdgeInsets.only(bottom: 70),
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white),
                  child: Center(
                    child: Text('START',
                        style: GoogleFonts.lilitaOne(
                            color: Colors.black, fontSize: 36)),
                  ),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
