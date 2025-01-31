import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  Map<String, List<String>> quizTypes = {
    "TRIVIA": ["Physics", "Chemistry", "Biology"],
    "GUESS THE LOGO": ["Algebra", "Geometry", "Calculus"],
    "WHAT CHARACTER AM I?": ["Ancient", "Medieval", "Modern"],
    "TRUE OR FALSE": ["Programming", "Cybersecurity", "AI & ML"],
    "PUZZLES/RIDDLES": ["Current Affairs", "World Facts", "Trivia"],
    "WHO AM I?": []
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/smartpantsbgimg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  Text(
                    'Smarty Pants',
                    style: GoogleFonts.lilitaOne(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Lets Play ',
                style: GoogleFonts.lilitaOne(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Choose your category',
                style: GoogleFonts.lilitaOne(
                  color: Colors.black26,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(
                        quizTypes.length,
                        (index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/chooseQuizType',
                                  arguments: {
                                    'category':
                                        quizTypes.entries.toList()[index].key,
                                    'categorylist':
                                        quizTypes.entries.toList()[index].value
                                  });
                            },
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  quizTypes.entries.toList()[index].key,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lilitaOne(
                                    color: Colors.black,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )))
            ],
          ),
        ),
      ],
    ));
  }
}
