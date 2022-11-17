import 'package:flutter/material.dart';
import 'package:learner_testin/add_service.dart';
import 'package:learner_testin/bookings.dart';
import 'package:learner_testin/calendar.dart';
import 'package:learner_testin/customer_support.dart';
import 'package:learner_testin/dashboard.dart';
import 'package:learner_testin/home_screen.dart';
import 'package:learner_testin/inbox.dart';
import 'package:learner_testin/notifacation.dart';
import 'package:learner_testin/profile.dart';
import 'package:learner_testin/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.lightGreenAccent.shade700,
          unselectedItemColor: Colors.grey.shade400,
        ),
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        dividerTheme: DividerThemeData(
          color: Colors.grey.shade800,
          indent: 20,
          endIndent: 20,
        ),
        hintColor: Colors.grey,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0xFF4CAF50),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,

      // },
      home: const CustomerSupport(),
    );
  }
}
