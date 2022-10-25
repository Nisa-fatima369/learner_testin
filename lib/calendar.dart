import 'package:flutter/material.dart';
// import 'package:flutter_week_view/flutter_week_view.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  static const String id = 'calendar';

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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

      // body: DayView(
      //   date: now,
      //   events: [
      //     FlutterWeekViewEvent(
      //       decoration: const BoxDecoration(
      //         shape: BoxShape.rectangle,
      //         color: Colors.green,
      //       ),
      //       title: 'John Smith',
      //       description: 'Hair Treatment',
      //       start: date.add(const Duration(hours: 9, minutes: 00)),
      //       end: date.add(const Duration(hours: 9, minutes: 45)),
      //     ),

      //   ],
      //   style: DayViewStyle.fromDate(
      //     date: now,
      //     currentTimeRuleHeight: 3,
      //     currentTimeRuleColor: Colors.green,
      //     currentTimeCircleColor: Colors.green,
      //     currentTimeCirclePosition: CurrentTimeCirclePosition.left,
      //     backgroundRulesColor: Colors.white,
      //   ),
      // ),

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: const [
      //           Text(
      //             'June 2022',
      //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //           ),
      //           Text(
      //             '<       >',
      //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: const [
      //           Text(
      //             'Mo',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //           ),
      //           Text(
      //             'Tu',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //           ),
      //           Text(
      //             'We',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //           ),
      //           Text(
      //             'Th',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //           ),
      //           Text(
      //             'Fri',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //           ),
      //           Text(
      //             'Sa',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //           ),
      //           Text(
      //             'Su',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: const [
      //           Text(
      //             '29',
      //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      //           ),
      //           Text(
      //             '30',
      //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      //           ),
      //           Text(
      //             '31',
      //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      //           ),
      //           Text(
      //             '1',
      //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      //           ),
      //           Text(
      //             '2',
      //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      //           ),
      //           Text(
      //             '3',
      //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      //           ),
      //           Text(
      //             '4',
      //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      //           ),
      //         ],
      //       ),
      //     ),
      //     DayView(
      //       controller: EventController(),
      //       eventTileBuilder: (date, events, boundry, start, end) {
      //         // Return your widget to display as event tile.
      //         return Container();
      //       },
      //       showVerticalLine: true, // To display live time line in day view.
      //       showLiveTimeLineInAllDays:
      //           true, // To display live time line in all pages in day view.
      //       minDay: DateTime(1990),
      //       maxDay: DateTime(2050),
      //       initialDay: DateTime(2021),
      //       heightPerMinute: 1, // height occupied by 1 minute time span.
      //       eventArranger:
      //           const SideEventArranger(), // To define how simultaneous events will be arranged.
      //       onEventTap: (events, date) => print(events),
      //       onDateLongPress: (date) => print(date),
      //     ),
      //   ],
      // ),
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
}
