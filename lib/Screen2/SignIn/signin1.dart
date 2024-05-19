import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:log/Services/auth_service.dart';
import 'package:log/Social%20media/Social_icons.dart';
import 'package:log/Themes/constants.dart';
import 'package:log/second%20page/email.dart';
import 'package:log/second%20page/password.dart';
import 'package:provider/provider.dart';

class Sign_in1 extends StatefulWidget {
  const Sign_in1({super.key});

  @override
  State<Sign_in1> createState() => _Sign_in1State();
}

class _Sign_in1State extends State<Sign_in1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
            Text("Sign In with your Email & Password",style: TextStyle(fontSize: 10,color:Colors.white)),
            Image.asset("assets/images/clinify.png",
            height: 180, width: 200,),
           Sign_In_Form()
          ],
        ),
      ),
    ));
  }
}

class Sign_In_Form extends StatefulWidget {
  const Sign_In_Form({super.key});

  @override
  State<Sign_In_Form> createState() => _Sign_In_FormState();
}

class _Sign_In_FormState extends State<Sign_In_Form> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Email(),
        const SizedBox(height: 20,),
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
              const Text('Remember Me'),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Forgot Password?'),
          ),
        ],
      ),
        SizedBox(height: 10,),
        TextButton(
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>( Colors.black),
                minimumSize: MaterialStateProperty.all<Size>(Size(250, 50))),
            onPressed: ()  {
              Navigator.of(context).pushNamedAndRemoveUntil('User-Interface', (route) => false);
              //final authService = Provider.of<AuthService>(context, listen: false);
              // try{
              //   await authService.signInWithEmailandPassword(emailController.text, passwordController.text);
              // } catch (e){
              //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString(),),),);
              // }
            },
            child: Text("Login",style: TextStyle(color:Colors.white ))),
       SizedBox(height: 20), // Add spacing between login button and "Login With" section
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Line 1.png"),//dash
          Text("Login with"),
          Image.asset("assets/images/Line 1.png"),//dash
        ],
      ),
        SizedBox(height: 20),
      Social(),
       SizedBox(height: 20),
       Text("Don't Have an Account?",style: TextStyle(color: Colors.black,fontSize: 15)),
       TextButton(onPressed: (){
         Navigator.pushNamed(context,"sign_up");
       }, child: Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 25),))
      ],
    ));
  }
}
