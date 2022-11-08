import 'package:flutter/material.dart';
import 'package:learner_testin/add_service.dart';
import 'package:learner_testin/constants.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.transparent.withOpacity(0.2),
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: Image.network(
                      'https://images.unsplash.com/photo-1614850715649-1d0106293bd1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                      fit: BoxFit.cover,
                    )),
                    Positioned(
                      height: 50,
                      left: 0,
                      right: 0,
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        centerTitle: true,
                        title: const Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: TextButton.icon(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt, color: Colors.white),
                        label: const Text(
                          'Add Cover Photo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hair Salon L.L.C',
                      style: kLargeBoldTextStyle,
                    ),
                    // Expanded(child: SizedBox()),
                    Text(
                      'Location Here',
                      style: kBoldTextStyle.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
                thickness: 7,
                indent: 1,
                endIndent: 1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About Us',
                      style: kBoldTextStyle,
                    ),
                    SizedBox(height: size.height * 0.009),
                    Container(
                      height: size.width * 0.27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 2,
                              spreadRadius: 3),
                        ],
                      ),
                      child: TextField(
                        maxLines: null,
                        maxLength: null,
                        expands: true,
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintMaxLines: 3,
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          hintText:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Our Services', style: kBoldTextStyle),
                        Text('View all', style: kGreeenUnderlineText),
                      ],
                    ),
                    SizedBox(height: size.height * 0.009),
                    ReuseService(size: size),
                    SizedBox(height: size.height * 0.005),
                    ReuseService(size: size),
                    SizedBox(height: size.height * 0.025),
                    Container(
                      height: size.height * 0.05,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.green,
                              blurRadius: 0.5,
                              spreadRadius: 1.0)
                        ],
                      ),
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const AddService(),
                            ),
                          );
                        },
                        style: const ButtonStyle(),
                        icon: const Icon(Icons.add, color: Colors.green),
                        label: const Text(
                          'Add Service',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),
                    const Text('Our Staff', style: kBoldTextStyle),
                    SizedBox(height: size.height * 0.015),
                    Row(
                      children: List.generate(
                        4,
                        (index) => Container(
                          height: size.width * 0.2,
                          width: size.width * 0.2,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade400,
                                radius: 30.0,
                              ),
                              const Text('Steven Bradi')
                            ],
                          ),
                        ),
                      ),
                    ),

                    Divider(
                      indent: 2.0,
                      endIndent: 2.0,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(height: size.height * 0.009),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Business Hours', style: kBoldTextStyle),
                        Text('Edit', style: kPrimaryColor),
                      ],
                    ),
                    SizedBox(height: size.height * 0.009),
                    Schedule(day: 'Monday', time: '8:00 AM - 7:00 PM'),
                    Schedule(day: 'Tuesday', time: '8:00 AM - 7:00 PM'),
                    Schedule(day: 'Wednesday', time: '8:00 AM - 7:00 PM'),
                    Schedule(day: 'Thursday', time: '8:00 AM - 7:00 PM'),
                    Schedule(day: 'Friday', time: '8:00 AM - 7:00 PM'),
                    Schedule(day: 'Saturday', time: '8:30 AM - 4:00 PM'),
                    Schedule(day: 'Sunday', time: 'Closed'),
                    Divider(
                      indent: 2.0,
                      endIndent: 2.0,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(height: size.height * 0.009),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Reviews',
                          style: kBoldTextStyle,
                        ),
                        Text('View all', style: kGreeenUnderlineText),
                      ],
                    ),
                    Column(
                      children: [
                        ListView.separated(
                          itemCount: 1,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              indent: 2.0,
                              endIndent: 2.0,
                              color: Colors.grey.shade600,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return listTile();
                          },
                        ),
                      ],
                    ),
                    // Column(
                    //   children: List.generate(
                    //     6,
                    //     (index) => listTile(),
                    //   ),
                    // ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile listTile() {
    return ListTile(
      isThreeLine: true,
      leading: const Icon(
        Icons.circle_rounded,
        color: Colors.grey,
        size: 44,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Barbara Hines',
            style: klessBoldText,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              star(),
              star(),
              star(),
              star(),
              star(),
            ],
          ),
        ],
      ),
      subtitle: Column(
        children: [
          const Text(
            'Sunt in culpa qui officia deserunt mollit id est laborum',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.subdirectory_arrow_left,
                  color: Colors.green,
                ),
                label: const Text(
                  'Reply',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const Text(
                '6 Days ago',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Icon star() {
    return Icon(
      Icons.star_rate,
      color: Colors.yellow.shade700,
    );
  }
}

class ReuseService extends StatelessWidget {
  const ReuseService({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.27,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 3),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Haircut', style: klessBoldText),
                Text(
                  '\$40.00',
                  style: klessBoldText.copyWith(fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.001),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.5,
                  child: Text(
                      'Sunt in culpa qui officia deserunt mollit anim id est laborum'),
                ),
                Text('45 min', style: TextStyle(color: Colors.grey.shade400)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.edit, color: Colors.black),
                SizedBox(width: 5.0),
                Icon(Icons.delete, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  const Schedule({super.key, required this.day, required this.time});
  final String day;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(day),
            Text(time),
          ],
        ),
      ),
    );
  }
}





// Divider(
              //   indent: 1,
              //   endIndent: 1,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     Text(
              //       'Reviews',
              //       style: kBoldTextStyle,
              //     ),
              //     Text('View all', style: kGreeenUnderlineText),
              //   ],
              // ),
              // Column(
              //     children: List.generate(
              //   6,
              //   (index) => listTile(),
              // )),
              // TextButton(
              //   onPressed: () {},
              //   style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all(
              //       const Color(0xFFFFEBEE),
              //     ),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: const [
              //       Icon(Icons.delete, color: Colors.red),
              //       Text(
              //         'Account Delete',
              //         style: TextStyle(color: Colors.red),
              //       ),
              //     ],
              //   ),
              // ),