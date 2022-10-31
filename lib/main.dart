import 'package:flutter/material.dart';
import 'package:learner_testin/calendar.dart';
import 'package:learner_testin/dashboard.dart';
import 'package:learner_testin/home_screen.dart';
import 'package:learner_testin/inbox.dart';
import 'package:learner_testin/notifacation.dart';
import 'package:learner_testin/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.lightGreenAccent.shade700,
            unselectedItemColor: Colors.grey.shade400,
          ),
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.grey.shade200,
         
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.green,
          )),
      debugShowCheckedModeBanner: false,
      routes: {
        Dashboard.id: (context) => const Dashboard(),
        Calendar.id: (context) => const Calendar(),
        Notifacation.id: (context) => const Notifacation(),
        Inbox.id: (context) => const Inbox(),
        Profile.id: (context) => const Profile(),
      },
      home: const HomeScreen(),
    );
  }
}
