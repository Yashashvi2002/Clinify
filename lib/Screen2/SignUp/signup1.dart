import 'package:flutter/material.dart';

import '../../Social media/Social_icons.dart';
import '../../second page/email.dart';
import '../../second page/password.dart';


class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/clinify.png",
              height: 180, width: 200,),
            Sign_Up_Form()
          ],
        ),
      ),
    ));
  }
}
class Sign_Up_Form extends StatefulWidget {
  const Sign_Up_Form({super.key});

  @override
  State<Sign_Up_Form> createState() => _Sign_Up_FormState();
}

class _Sign_Up_FormState extends State<Sign_Up_Form> {
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Email(),
        SizedBox(height: 20,),
        Password(),
        SizedBox(height: 20,),
        Password(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Checkbox(
                    value: false,//temporary
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(width: 15),
                const Text('I Agree all the Terms & Conditions*',style: TextStyle(fontSize: 15),),
              ],
            ),
      ],
    ),
        SizedBox(height: 10,),
        TextButton(
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>( Colors.black),
                minimumSize: MaterialStateProperty.all<Size>(Size(250, 50))),
            onPressed: (){
            }, child: Text("Sign Up",style: TextStyle(color:Colors.white ),)),

        SizedBox(height: 20), // Add spacing between login button and "Login With" section
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Line 1.png"),//dash
            Text("Sign Up With"),
            Image.asset("assets/images/Line 1.png"),//dash

          ],
        ),
        SizedBox(height: 20),
        Social(),
        SizedBox(height: 20),
        Text("Already Have an Account?",style: TextStyle(color: Colors.black,fontSize: 15)),
        TextButton(onPressed: (){
          Navigator.pushNamed(context, "signin");
        }, child: Text("Log In",style: TextStyle(color: Colors.black,fontSize: 25),))
      ]
    ) );
  }
}
