import 'package:flutter/material.dart';
import 'package:learner_testin/bookings.dart';
import 'package:learner_testin/constants.dart';
import 'package:learner_testin/contacts.dart';
import 'package:learner_testin/prepayments.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.04),
          Listtiles(
              title: 'Bookings',
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return const Bookings();
                  },
                );
              }),
          Divider(color: Colors.grey.shade400, indent: 40, endIndent: 40),
          Listtiles(
              title: 'Prepayments',
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return const PrePayments();
                  },
                );
              }),
          Divider(color: Colors.grey.shade400, indent: 40, endIndent: 40),
          Listtiles(
              title: 'Contacts',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Contacts();
                    },
                  ),
                );
              }),
          Divider(color: Colors.grey.shade400, indent: 40, endIndent: 40),
          Listtiles(title: 'Staff', onPressed: () {}),
          Divider(color: Colors.grey.shade400, indent: 40, endIndent: 40),
          Listtiles(title: 'Account Details', onPressed: () {}),
          Divider(color: Colors.grey.shade400, indent: 40, endIndent: 40),
          Listtiles(title: 'Marketings', onPressed: () {}),
          Divider(color: Colors.grey.shade400, indent: 40, endIndent: 40),
          Listtilee(title: 'Currency', subtitle: 'US', onPressed: () {}),
          Divider(color: Colors.grey.shade400, indent: 40, endIndent: 40),
          Listtilee(title: 'Language', subtitle: 'English', onPressed: () {}),
          Divider(color: Colors.grey.shade400, indent: 40, endIndent: 40),
          Listtiles(title: 'Notification Settings', onPressed: () {}),
        ],
      ),
    );
  }
}

class Listtilee extends StatelessWidget {
  const Listtilee({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 8),
      child: ListTile(
        title: Text(title, style: klessBoldText),
        subtitle: Text(subtitle, style: kPrimaryColor),
        trailing: IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}

class Listtiles extends StatelessWidget {
  const Listtiles({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 8),
      child: ListTile(
        title: Text(
          title,
          style: klessBoldText,
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
