import 'package:flutter/material.dart';
import 'package:smartypants/ChooseQuizType.dart';
import 'package:smartypants/Dashboard.dart';
import 'package:smartypants/LogoQuestion.dart';
import 'package:smartypants/OnBoarding.dart';
import 'package:smartypants/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smarty Pants',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnBoardingScreen(),
      initialRoute: '/',
      routes: {
        '/dashboard': (context) => DashBoardScreen(),
        '/profile': (context) => ProfileScreen(),
        '/chooseQuizType': (context) => ChooseQuizTypeScreen(),
        '/logoQuestion': (context) => LogoQuestionScreen()
      },
    );
  }
}
