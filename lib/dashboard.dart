import 'package:flutter/material.dart';
import 'package:learner_testin/notifacation.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Icon(Icons.search),
          ),
        ),
        title: const Text(
          'Dashboard',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const Notifacation();
                  }),
                );
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ResuableContainer(
                  color: Colors.green,
                  circleIcon: Icons.person,
                  arrowIcon: Icons.arrow_upward,
                  percentage: '23%',
                  title: 'Todays\'s Visitors',
                  value: '4,423',
                ),
                SizedBox(width: 20.0),
                ResuableContainer(
                  color: Colors.red,
                  circleIcon: Icons.shopping_bag,
                  arrowIcon: Icons.arrow_downward,
                  percentage: '10%',
                  title: 'Today\'s New Leads',
                  value: '2,153',
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ResuableContainer(
                  color: Colors.blue,
                  circleIcon: Icons.payment,
                  arrowIcon: Icons.arrow_upward,
                  percentage: '28%',
                  title: 'Today Income',
                  value: '\$14,243',
                ),
                SizedBox(width: 20.0),
                ResuableContainer(
                  color: Colors.blue,
                  circleIcon: Icons.pie_chart,
                  arrowIcon: Icons.arrow_upward,
                  percentage: '14%',
                  title: 'Total Sales',
                  value: '\$322',
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        'June 29',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(
                        color: Colors.grey.shade300,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade100,
                                    offset: const Offset(4, 5),
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                'JENNA ROY',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              // VerticalDivider(
                              //   thickness: 1.0,
                              //   color: Colors.black,
                              // ),
                              Text(
                                '\$200',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          trailing: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              // textStyle: MaterialStateProperty.all()),
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFFF9800),
                              ),
                            ),
                            child: const Text('Ongoing'),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResuableContainer extends StatelessWidget {
  const ResuableContainer({
    Key? key,
    required this.value,
    required this.title,
    required this.percentage,
    required this.circleIcon,
    required this.arrowIcon,
    required this.color,
  }) : super(key: key);

  final String? value, title, percentage;
  final IconData? circleIcon, arrowIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 180,
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                  height: 50,
                  width: 50,
                  child: Icon(
                    circleIcon,
                    color: Colors.green,
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            arrowIcon,
                            color: color,
                            size: 25,
                          ),
                          Text(
                            percentage!,
                            style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'This week',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              title!,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              value!,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
