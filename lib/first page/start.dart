import 'package:flutter/material.dart';
import 'package:log/Themes/constants.dart';
import 'package:log/Themes/size_configration.dart';
import 'package:log/first%20page/start1.dart'; // Make sure to import your SizeConfig class

import 'package:flutter/material.dart';
import 'package:log/start_button.dart';

class Start_Page extends StatefulWidget {
  const Start_Page({Key? key}) : super(key: key);

  @override
  State<Start_Page> createState() => _Start_PageState();
}

class _Start_PageState extends State<Start_Page> {
  int currentPage = 0; // Initialize currentPage

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to the lifeline in your time of need!",
      "image": "assets/images/hospital1.jpg",
    },
    {
      "text": "We help you in finding blood, fast. Every second counts in an emergency.",
      "image": "assets/images/hospital2.jpg",
    },
    {
      "text": "Don't let distance be a barrier. Locate nearby blood banks and be a lifeline for someone in need.",
      "image": "assets/images/hospital3.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged:(value) {
                setState(() {
                  currentPage =value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => Start1(
                image: splashData[index]["image"]!,
                text: splashData[index]["text"]!,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                        (index) => buildscroll(index: index),
                  ),
                ),
                Spacer(flex: 3,),
                StartButton( text: "Continue",press: (){
                  Navigator.pushNamed(context, 'splash_screen1');
                },),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildscroll({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}


