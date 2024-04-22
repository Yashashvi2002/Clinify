import 'package:flutter/material.dart';
import 'package:log/Screen2/SignUp/signup1.dart';

import '../../Themes/constants.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text("Back",style:TextStyle(fontWeight: FontWeight.bold) ,),
      ),
      body: SingleChildScrollView(
        child: SignUp1(),
      ),
    );
  }
}
