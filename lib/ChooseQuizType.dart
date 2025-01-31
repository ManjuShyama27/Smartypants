import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChooseQuizTypeScreen extends StatefulWidget {
  const ChooseQuizTypeScreen({super.key});

  @override
  State<ChooseQuizTypeScreen> createState() => _ChooseQuizTypeScreenState();
}

class _ChooseQuizTypeScreenState extends State<ChooseQuizTypeScreen> {
  List<String> trivianame = <String>[
    'TRIVIA',
    'Guess the LOGO',
    'RAPID FIRE',
    'Whats your CHARACTER?',
    'TRUE  or  FALSE',
    'WHO AM I?'
  ];
  List<String> logoname = <String>[
    'APPAREL/FASHION',
    'TECHNOLOGY',
    'AUTOMOTIVE',
    'FOOD & BEVERAGE',
    'SPORTS',
    'DAILY'
  ];
  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> arguments =
        ModalRoute.of(context)?.settings.arguments != null
            ? ModalRoute.of(context)?.settings.arguments
                as Map<String, List<String>>
            : {};
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
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back)),
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
                        arguments.values.length,
                        (index) {
                          return InkWell(
                            onTap: () async {
//                               final model = GenerativeModel(
//                                   model: 'gemini-1.5-flash',
//                                   apiKey:
//                                       "API_KEY",
//                                   generationConfig: GenerationConfig(
//                                       responseMimeType: 'application/json'));
//                               final prompt = '''
// Generate 10 easy quiz questions about identifying fashion logos in JSON format.Each question should have the following keys: "imageUrl" (valid logo url), "answer" (string), and "hint" (string).Here's an example:
// [
//  {
//     "imageUrl": "https://www.pngwing.com/en/free-png-zfnne",
//     "hint": "Just do it.",
//     "answer": "Nike"
//   },
//   {
//     "imageUrl": "https://www.google.co.in/url?sa=i&url=https%3A%2F%2Flogowik.com%2Fadidas-new-2022-logo-vector-svg-pdf-ai-eps-cdr-free-download-15678.html&psig=AOvVaw1PjYCuOwvODAWg8tH4JVry&ust=1738236492939000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCODC59jpmosDFQAAAAAdAAAAABAE",
//     "hint": "The Brand with the 3 Stripes.",
//     "answer": "Adidas"
//   },

// ]
// Generate the JSON array of quiz questions.
// ''';

                              // final content = [Content.text(prompt)];
                              // final response =
                              //     await model.generateContent(content);
                              // print(response.text);
                              Navigator.pushNamed(
                                context,
                                '/logoQuestion',
                              );
                            },
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  arguments.keys.first,
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
