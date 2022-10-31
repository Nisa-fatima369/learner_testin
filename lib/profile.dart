import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  static const String id = 'Profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.transparent.withOpacity(0.2),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30, right: 30, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF4CAF50),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt,
                                color: Colors.white),
                            label: const Text(
                              'Add Cover Photo',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      //
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(children: [
                Text('Hair Salon L.L.C'),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
