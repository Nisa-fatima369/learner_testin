import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  static const String id = 'calendar';

  @override
  State<Calendar> createState() => CalendarState();
}

class CalendarState extends State<Calendar> {
  int selectedIndex = 0;
  TextEditingController _contactControoler = TextEditingController();
  TextEditingController _serviceControoler = TextEditingController();
  TextEditingController _dateControoler = TextEditingController();
  TextEditingController _timeControoler = TextEditingController();

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Calendar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SfCalendar(
        view: CalendarView.week,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            // backgroundColor: Colors.transparent.withOpacity(0.1),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Add Appointments/Walk-in',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 17,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.cancel, color: Colors.grey),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text('Select contact or leave empty for walk-in'),
                   
                    const SizedBox(height: 5),
                    _dropdownTextField(
                      controller: _contactControoler,
                      optionSheet: () {
                      _optionBottomSheet(
                        
                        _contactControoler, options, context);
                    }),
                     const SizedBox(height: 5),
                    const SizedBox(height: 10),
                    const Text('Select Service'),
                    _dropdownTextField(
                       controller: _serviceControoler,
                      optionSheet: () {
                      _optionBottomSheet(_serviceControoler, options, context);
                    }),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Date'),
                              _dropdownTextField(
                                 controller: _dateControoler,
                                optionSheet: () {
                                _optionBottomSheet(
                                    _dateControoler, options, context);
                              }),
                            ],
                          ),
                        ),
                        const SizedBox(width: 40),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Time Slot'),
                              _dropdownTextField(
                                  controller: _timeControoler,
                                optionSheet: () {
                                _optionBottomSheet(
                                    _timeControoler, options, context);
                              }),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFEEEEEE),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // side: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                          child: const Text(
                            'CANCEL',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF4CAF50),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // side: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                          child: const Text(
                            'SAVE',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            selectedItemColor: Colors.lightGreenAccent.shade700,
            unselectedItemColor: Colors.grey.shade400,
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Dashborad',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                ),
                label: 'Calender',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.inbox),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }

  _dropdownTextField({required TextEditingController controller,
    required VoidCallback optionSheet}) {
    return TextField(
      onTap:    optionSheet,
      readOnly: true,
      controller: controller,
      decoration: const InputDecoration(
        suffixIcon: Icon(Icons.arrow_drop_down),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: Colors.green),
        ),
        contentPadding: EdgeInsets.all(20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: Colors.green),
        ),
        hintText: 'N/A',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }

  _optionBottomSheet(TextEditingController controller, List<String> options,
      BuildContext context) {
    showModalBottomSheet(
        // backgroundColor: Colors.transparent.withOpacity(0.1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        context: context,
        builder: ((context) => ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  controller.text = options[index];
                  Navigator.pop(context);
                },
                child: ListTile(
                  title: Text(options[index]),
                ),
              );
            },
            separatorBuilder: ((context, index) =>
                const Divider(color: Colors.grey)),
            itemCount: options.length)));
  }
}
