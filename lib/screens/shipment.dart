import 'package:assessment/screens/TabBar_pages.dart/all_pages.dart';
import 'package:assessment/screens/TabBar_pages.dart/completed_page.dart';
import 'package:assessment/screens/TabBar_pages.dart/cancelled.dart';
import 'package:assessment/screens/TabBar_pages.dart/pending.dart';
import 'package:assessment/screens/TabBar_pages.dart/progress.dart';
import 'package:assessment/screens/home_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

class Shipment extends StatefulWidget {
  const Shipment({super.key});

  @override
  State<Shipment> createState() => _ShipmentState();
}

class _ShipmentState extends State<Shipment> {
  final constantValues = Get.find<Constants>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<Tab> tabs = [
    const Tab(
        child: Padding(
      padding: EdgeInsets.only(left: 5),
      child: OverflowBar(children: [
        Text(
          'All',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 13,
          backgroundColor: const Color.fromARGB(255, 137, 89, 220),
          child: Text('12'),
        )
      ]),
    )),
    const Tab(
        child: Padding(
      padding: EdgeInsets.only(left: 5),
      child: OverflowBar(children: [
        Text(
          'Completed',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 13,
          backgroundColor:  const Color.fromARGB(255, 137, 89, 220),
          child: Text('5'),
        )
      ]),
    )),
    const Tab(
        child: Padding(
      padding: EdgeInsets.only(left: 5),
      child: OverflowBar(children: [
         Text(
          'In progress',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 13,
          backgroundColor:  const Color.fromARGB(255, 137, 89, 220),
          child: Text('3'),
        )
      ]),
    )),
    const Tab(
        child: Padding(
      padding: EdgeInsets.only(left: 5),
      child: OverflowBar(children: [
        Text(
          'Pending',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 13,
          backgroundColor:  Color.fromARGB(255, 137, 89, 220),
          child: Text('4'),
        )
      ]),
    )),
    const Tab(
        child: Padding(
      padding:  EdgeInsets.only(left: 5),
      child: OverflowBar(children: [
       Text(
          'Cancelled',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 13,
          backgroundColor:  Color.fromARGB(255, 137, 89, 220),
          child: Text('1'),
        )
      ]),
    )),
  ];

  List<Widget> tabsContent = const [
    AllPages(),
    CompletedPage(),
    ProgressPage(),
    PendingPages(),
    CancelledPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Container(
            margin: const EdgeInsets.all(60),
            child: const Text('Shipment history'),
          ),
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TabBar(
                  indicatorColor: Colors.orange,
                  isScrollable: true,
                  tabs: tabs),
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeFrame()));
              },
              icon: const Icon(Icons.arrow_back_ios_outlined)),
        ),
        body: Container(
          child: TabBarView(children: tabsContent),
        ),
      ),
    );
  }
}
