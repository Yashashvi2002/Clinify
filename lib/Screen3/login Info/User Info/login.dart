import 'package:flutter/material.dart';

import '../Hospital Info/login2.dart';
import 'login1.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Back",style:TextStyle(fontWeight: FontWeight.bold) ,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LogIn_1(),
            //LogIn_2(),
          ],
        ),
      ),
    );
  }
}
