import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm a').format(now);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inbox',
         
        
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.separated(
          itemCount: 5,
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 30,
              color: Colors.grey.shade300,
              indent: 20,
              endIndent: 20,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(
                Icons.circle_rounded,
                color: Colors.grey.shade200,
                size: 70,
              ),
              title: const Text(
                'Brandon Diaz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Lorem ipsum dolor sit amet, ...'),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  formattedDate,
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
