import 'package:flutter/material.dart';
import 'package:learner_testin/constants.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List weekdays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];
  @override
  Widget build(BuildContext context) {
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
                child: Stack(children: [
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
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
              // Container(
              //   height: 300,
              //   child: Padding(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         // const Text('About Us', style: kBoldTextStyle),
              //         // const Expanded(
              //         //   child: ResueTextField(),
              //         // ),
              //         // Row(
              //         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         //   children: const [
              //         //     Text('Our Services', style: kBoldTextStyle),
              //         //     Text(
              //         //       'View all',
              //         //       style: kGreeenUnderlineText,
              //         //     ),
              //         //   ],
              //         // ),
              //         // Expanded(child: ResueTextField()),
              //         // Expanded(child: SizedBox()),
              //         // Expanded(child: ResueTextField()),
              //         // Expanded(child: SizedBox()),
              //         // const Text('Our Staff', style: kBoldTextStyle),
              //         // Row(
              //         //   mainAxisSize: MainAxisSize.min,
              //         //   children: [
              //         //     Expanded(
              //         //       child: ListView.builder(
              //         //         shrinkWrap: true,
              //         //         scrollDirection: Axis.horizontal,
              //         //         itemCount: 3,
              //         //         itemBuilder: (BuildContext context, int index) =>
              //         //             circleReuse(),
              //         //       ),
              //         //     ),
              //         //   ],
              //         // ),
              //         // const Divider(),
              //         Expanded(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: const [
              //               Text(
              //                 'Business Hours',
              //                 style: kBoldTextStyle,
              //               ),
              //               Text('Edit', style: kPrimaryColor),
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           child: ListView.builder(
              //             itemCount: 6,
              //             itemBuilder: (BuildContext context, int index) {
              //               return Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Text('Monday'),
              //                   Expanded(child: SizedBox()),
              //                   Text('8:00AM-7:00PM'),
              //                 ],
              //               );
              //             },
              //           ),
              //         ),
              Divider(
                indent: 1,
                endIndent: 1,
              ),
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
                  children: List.generate(
                6,
                (index) => listTile(),
              ))

              //         TextButton(
              //           onPressed: () {},
              //           style: ButtonStyle(
              //             backgroundColor: MaterialStateProperty.all(
              //               const Color(0xFFFFEBEE),
              //             ),
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: const [
              //               Icon(Icons.delete, color: Colors.red),
              //               Text(
              //                 'Account Delete',
              //                 style: TextStyle(color: Colors.red),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
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
              // Row(
              //   children: [
              //     Icon(
              //       Icons.subdirectory_arrow_left,
              //       color: Colors.green,
              //     ),
              //     Text('Reply', style: kPrimaryColor),
              //   ],
              // ),
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

  Column circleReuse() {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade300,
          radius: 30,
        ),
        const Text('Steven Bradi'),
      ],
    );
  }
}

class ResueTextField extends StatelessWidget {
  const ResueTextField({Key? key, this.text, this.title, this.icon})
      : super(key: key);

  final String? text, title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.grey.shade600),
      maxLines: null,
      maxLength: null,
      expands: true,
      textInputAction: TextInputAction.newline,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        isCollapsed: true,

        // hintMaxLines: null,
        // hintStyle: TextStyle(color: Colors.grey.shade500),
        // hintText:
        //     'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
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
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      ),
    );
  }
}
