import 'package:flutter/material.dart';
import 'package:learner_testin/calendar.dart';
import 'package:learner_testin/dashboard.dart';
import 'package:learner_testin/notifacation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Calendar.id,
      routes: {
        Dashboard.id: (context) => const Dashboard(),
        Calendar.id: (context) => const Calendar(),
        Notifacation.id: (context) => const Notifacation(),
      },
    );
  }
}
