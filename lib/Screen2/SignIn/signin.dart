import 'package:flutter/material.dart';
import 'package:log/Screen2/SignIn/signin1.dart';
import 'package:log/Themes/constants.dart';


class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
      appBar: AppBar(
      title: Text("Back",style:TextStyle(fontWeight: FontWeight.bold) ,),
      ),
        body: SingleChildScrollView(
          child: Sign_in1(),
        ),
      ),
    );
  }
}
