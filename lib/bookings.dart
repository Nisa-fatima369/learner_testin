import 'package:flutter/material.dart';
import 'package:learner_testin/constants.dart';

class Bookings extends StatefulWidget {
  const Bookings({super.key});

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  final TextEditingController _advancecontroller = TextEditingController();
  final TextEditingController _futurecontroller = TextEditingController();
  final TextEditingController _reschedulecontroller = TextEditingController();

  List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6',
    'Option 7',
    'Option 8',
    'Option 9',
    'Option 10',
    'Option 11',
    'Option 12',
    'Option 13',
    'Option 14',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Bookings',
                  style: kBoldTextStyle.copyWith(color: Colors.green)),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.clear, color: Colors.grey.shade400)),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Confirm Bookings Automatically',
                  style: kVerylessBoldText.copyWith(fontSize: 18)),
              const Icon(Icons.toggle_on, color: Colors.green, size: 50),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          const Text('Advance Bookings', style: kVerylessBoldText),
          SizedBox(height: size.height * 0.005),
          ReuseTextFields(
            hintText: 'Prior to',
            controller: _advancecontroller,
            onTap: () {
              _optionBottomSheet(context, options, _advancecontroller);
            },
          ),
          SizedBox(height: size.height * 0.02),
          const Text('Future Bookings', style: kVerylessBoldText),
          SizedBox(height: size.height * 0.005),
          ReuseTextFields(
            hintText: 'Upto',
            controller: _futurecontroller,
            onTap: () {
              _optionBottomSheet(context, options, _futurecontroller);
            },
          ),
          SizedBox(height: size.height * 0.02),
          const Text('Reschedule Bookings', style: kVerylessBoldText),
          SizedBox(height: size.height * 0.005),
          ReuseTextFields(
            hintText: 'In Advance',
            controller: _reschedulecontroller,
            onTap: () {
              _optionBottomSheet(context, options, _reschedulecontroller);
            },
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFEEEEEE)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                child: const Text('CANCEL'),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                child:
                    const Text('SAVE', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReuseTextFields extends StatelessWidget {
  const ReuseTextFields({
    Key? key,
    required this.hintText,
    required this.onTap,
    this.controller,
  }) : super(key: key);

  final String hintText;
  final VoidCallback onTap;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      readOnly: true,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.green,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: Colors.green),
        ),
        contentPadding: const EdgeInsets.all(20),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: Colors.green),
        ),
        hintText: hintText,
      ),
    );
  }
}

_optionBottomSheet(BuildContext context, List<String> options,
    TextEditingController controller) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (context) {
      return ListView.separated(
        itemCount: 14,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              controller.text = options[index];
              Navigator.pop(context);
            },
            child: ListTile(
              title: Text(
                options[index],
              ),
            ),
          );
        },
      );
    },
  );
}
