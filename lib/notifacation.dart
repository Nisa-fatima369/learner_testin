import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Notifacation extends StatefulWidget {
  const Notifacation({super.key});

  static const String id = 'Notification';

  @override
  State<Notifacation> createState() => NotifacationState();
}

class NotifacationState extends State<Notifacation> {
  // String? title;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm').format(now);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.shade800,
          indent: 60,
          endIndent: 60,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: const Icon(
                Icons.circle_outlined,
                color: Colors.green,
                size: 60,
              ),
              title: const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  formattedDate,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            ),
          );
        },
      ),
     
    );
  }
}
