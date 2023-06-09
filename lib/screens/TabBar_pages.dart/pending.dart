// ignore_for_file: unused_import, unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controller.dart';

class PendingPages extends StatefulWidget {
  const PendingPages({super.key});

  @override
  State<PendingPages> createState() => _PendingPagesState();
}

class _PendingPagesState extends State<PendingPages> {
  
  final constantValues = Get.find<Constants>();
  

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              width: 700,
              height: 1000,
              color: Colors.grey[100],
              child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 1, top: 10, bottom: 10),
                        child: Text(
                          'Shipments',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      _listShipments()
                    ],
                  ))),
        ],
      ),
    ));
  }

  _listShipments() {
    return Positioned(
        top: 45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 210,
              width: 385,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.replay_outlined,
                        color: Colors.orange,
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 10),
                          backgroundColor: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      label: const Text(
                        'Pending',
                        style: TextStyle(fontSize: 18, color: Colors.orange),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Arriving today!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text(
                          'Your delivery, \n #NEJ23481570754963 from Atlanta, \n is arriving today',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Image(
                              image: AssetImage('assets/icons/greybox.png')),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 22),
                        child: const Text(
                          '\$1400 USD',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 18),
                        child: const Text(
                          '>  Sep 20, 2023',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 210,
              width: 385,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.replay_outlined,
                        color: Colors.orange,
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 10),
                          backgroundColor: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      label: const Text(
                        'Pending',
                        style: TextStyle(fontSize: 18, color: Colors.orange),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Arriving today!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text(
                          'Your delivery, \n #NEJ23551570754213 from Czech, \n is arriving today',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Image(
                              image: AssetImage('assets/icons/greybox.png')),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 22),
                        child: const Text(
                          '\$650 USD',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 18),
                        child: const Text(
                          '>  Sep 20, 2023',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
