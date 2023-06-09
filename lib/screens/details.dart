// ignore_for_file: unused_import

import 'package:assessment/screens/home_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 180,
                  child: Padding(
                    padding: EdgeInsets.only(left: 95, top: 100),
                    child: Text(
                      'MoveMate ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.deepPurple,
                        fontSize: 37,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 60),
                  child: Container(
                    height: 80,
                    padding:
                        const EdgeInsets.only(top: 10, right: 50, bottom: 8),
                    child: Image.asset('assets/icons/fast.png'),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 80, right: 80, top: 5, bottom: 15),
              decoration: const BoxDecoration(),
              child: const Image(
                  image: AssetImage(
                'assets/icons/greybox.png',
              )),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              child: const Text(
                'Total Estimated Amount',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$1460',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    ' USD',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                child: const Text(
              'This amount is estimated this will vary \n if you change your location or weight',
              style: TextStyle(fontSize: 17),
            )),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeFrame()));
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 100, right: 100, top: 17, bottom: 17),
                  backgroundColor: Colors.orange.shade600,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35))),
              child: const Text(
                'Back to home',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
