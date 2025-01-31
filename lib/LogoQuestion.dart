import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoQuestionScreen extends StatefulWidget {
  const LogoQuestionScreen({super.key});

  @override
  State<LogoQuestionScreen> createState() => _LogoQuestionScreenState();
}

class _LogoQuestionScreenState extends State<LogoQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/smartpantsbgimg.jpg',
            fit: BoxFit.cover,
          )),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white, // border color
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back)),
                      )),
                  Text(
                    'Question',
                    style: GoogleFonts.lilitaOne(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white, // border color
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.bookmark_border, color: Colors.black)),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(child: AnyLogo.fashion.fendi.image()),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Enter Logo name",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 70),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white),
                    child: Center(
                      child: Text('NEXT',
                          style: GoogleFonts.lilitaOne(
                              color: Colors.black, fontSize: 32)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 70),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white),
                    child: Center(
                      child: Text('SKIP',
                          style: GoogleFonts.lilitaOne(
                              color: Colors.black, fontSize: 32)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
