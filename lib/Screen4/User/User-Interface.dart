import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Themes/bottom_navbar.dart';
import '../../Themes/constants.dart';
class UserInterface extends StatefulWidget {
  const UserInterface({super.key});

  @override
  State<UserInterface> createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  // Replace with your actual user data
  // final Map<String, dynamic> userData = {
  //   "First Name": "John",
  //   "Last Name": "Doe",
  //   "Profession": "Professional",
  // };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery
                  .of(context)
                  .size
                  .width * 0.05,
              right: MediaQuery
                  .of(context)
                  .size
                  .width * 0.05,
            ),
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.95,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.25,
                    child: Card(
                      color: Colors.white70,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Omkar Ugale',
                                      style: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      'Mumbai',
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: CupertinoColors.systemGrey,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'B+',
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                  ),
                                )

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Card(
                      color: Colors.white70,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Blood Info',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            InkWell(
                              child: const Text(
                                'Blood Request',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => null,
                              child: const Text(
                                'Health Points',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            InkWell(
                              child: const Text(
                                'Status',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const InkWell(
                              child: Text(
                                'Contact Us',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Card(
                      color: Colors.white70,
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                        child: InkWell(
                          child: Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      // Replace with your logout logic
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: buttonTheme,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

