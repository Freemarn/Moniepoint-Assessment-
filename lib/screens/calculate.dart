// ignore_for_file: unused_import, prefer_typing_uninitialized_variables

import 'package:assessment/screens/details.dart';
import 'package:assessment/screens/home.dart';
import 'package:assessment/screens/home_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Container(
            margin: const EdgeInsets.all(95), child: const Text('Calculate')),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeFrame()));
            },
            icon: const Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey[100],
              //padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 245, top: 5),
                    child: const Text(
                      'Destination',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 250,
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextField(
                            decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 250, 249, 249),
                          hintText: '| Sender location',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 20,
                          ),
                          prefixIcon: Icon(
                            Icons.drive_folder_upload,
                            size: 30,
                          ),
                        )),
                        TextField(
                            decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 250, 249, 249),
                          hintText: '| Receiver location',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 20),
                          prefixIcon: Icon(
                            Icons.archive_outlined,
                            size: 30,
                          ),
                        )),
                        TextField(
                            decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 250, 249, 249),
                          hintText: '| Approx weight',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 20),
                          prefixIcon: Icon(
                            Icons.hourglass_top_outlined,
                          ),
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 252),
                    child: const Text(
                      'Packaging',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 185),
                    child: const Text(
                      'What are you sending?',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 35),
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.only(top: 5, bottom: 20),
                            decoration: const BoxDecoration(),
                            child: const Image(
                                image: AssetImage(
                              'assets/icons/greybox.png',
                            )),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 200.0),
                          child: SizedBox(
                            height: 40,
                            child: Text(
                              '|  Box',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.6),
                          child: Container(
                            child: const Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 40,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 252),
                    child: const Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 185),
                    child: const Text(
                      'What are you sending?',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            const EdgeInsets.only(left: 6, top: 1, right: 8),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Documents',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            const EdgeInsets.only(left: 3, top: 1, right: 3),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Glass',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            const EdgeInsets.only(left: 5, top: 1, right: 5),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Liquid',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            const EdgeInsets.only(left: 3, top: 1, right: 3),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Food',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            const EdgeInsets.only(left: 6, top: 1, right: 8),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Electronic',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            const EdgeInsets.only(left: 3, top: 1, right: 3),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Product',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            const EdgeInsets.only(left: 5, top: 1, right: 5),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Others',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 140, vertical: 10),
                        backgroundColor: Colors.orange.shade600,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35))),
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
