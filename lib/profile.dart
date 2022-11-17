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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(title: 'About Us'),
                  SizedBox(height: size.height * 0.009),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
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
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _title(title: 'Our Services'),
                      const Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Text('View all', style: kGreeenUnderlineText),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.009),
                  ReuseService(size: size),
                  SizedBox(height: size.height * 0.005),
                  ReuseService(size: size),
                  SizedBox(height: size.height * 0.025),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: size.height * 0.05,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.green,
                              blurRadius: 0.5,
                              spreadRadius: 1.0)
                        ],
                      ),
                      child: OutlinedButton.icon(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return const AddService();
                            },
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
                  ),
                  SizedBox(height: size.height * 0.025),
                  _title(title: 'Our Staff'),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade400,
                                  radius: 25.0,
                                ),
                                const Text('Steven Bradi')
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(height: size.height * 0.009),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _title(title: 'Business Hours'),
                      const Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Text('Edit', style: kPrimaryColor),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.009),
                  const Schedule(day: 'Monday', time: '8:00 AM - 7:00 PM'),
                  const Schedule(day: 'Tuesday', time: '8:00 AM - 7:00 PM'),
                  const Schedule(day: 'Wednesday', time: '8:00 AM - 7:00 PM'),
                  const Schedule(day: 'Thursday', time: '8:00 AM - 7:00 PM'),
                  const Schedule(day: 'Friday', time: '8:00 AM - 7:00 PM'),
                  const Schedule(day: 'Saturday', time: '8:30 AM - 4:00 PM'),
                  const Schedule(day: 'Sunday', time: 'Closed'),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(height: size.height * 0.009),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _title(title: 'Reviews'),
                      const Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Text('View all', style: kGreeenUnderlineText),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.009),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return listTile();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          indent: 10,
                          endIndent: 10,
                          color: Colors.grey.shade600,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFFFFEBEE),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.delete, color: Colors.red),
                          Text(
                            'Account Delete',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _title({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Text(
        title,
        style: kBoldTextStyle,
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
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
                  const Text('Haircut', style: klessBoldText),
                  Text(
                    '\$40.00',
                    style: klessBoldText.copyWith(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.001),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Sunt in culpa qui officia deserunt mollit anim id est laborum',
                    ),
                  ),
                  const SizedBox(width: 30),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
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
