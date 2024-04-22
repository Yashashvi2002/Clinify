import 'package:flutter/material.dart';


import '../Profile.dart';
import 'Personal_Info2.dart';
class LogIn_2 extends StatelessWidget {
  const LogIn_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0,),
        Profile(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),  // Add this
          child: Divider(color: Colors.black),
        ),
        const SizedBox(height: 10.0,),
        PersonalInfoForm2()
      ],
    );
  }
}
