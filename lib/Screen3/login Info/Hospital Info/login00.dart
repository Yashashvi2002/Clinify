import 'package:flutter/material.dart';

import 'login2.dart';
class Login_00 extends StatelessWidget {
  const Login_00({super.key});

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
           // LogIn_1(),
            LogIn_2(),
          ],
        ),
      ),
    );
  }
}
