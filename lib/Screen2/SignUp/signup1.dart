import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Social media/Social_icons.dart';
import '../../second page/email.dart';


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
  bool _isChecked = false;
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  String? passwordError;

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
        children: [
          Email(),
          SizedBox(height: 20,),
          Password(),
          // Call your defined function for password field
          SizedBox(height: 20,),
          ConfirmPassword(), // Call your defined function for confirm password field
          if (passwordError != null) // Display error message if it exists
            Text(
              passwordError!,
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 20,
                    height: 40,
                    child: Checkbox(
                      value: _isChecked,
                      // Set value based on the state variable
                      onChanged: (value) => setState(() => _isChecked = value!),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Text('I Agree all the Terms & Conditions*',
                    style: TextStyle(fontSize: 15),),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black),
                  minimumSize: MaterialStateProperty.all<Size>(Size(250, 50))),
              onPressed: () {Navigator.of(context).pushNamedAndRemoveUntil('signin', (route) => false);},
              child: Text("Sign Up", style: TextStyle(color: Colors.white),)),

          SizedBox(height: 20),
          // Add spacing between login button and "Login With" section
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Line 1.png"), //dash
              Text("Sign Up With"),
              Image.asset("assets/images/Line 1.png"), //dash

            ],
          ),
          SizedBox(height: 20),
          Social(),
          SizedBox(height: 20),
          Text("Already Have an Account?",
              style: TextStyle(color: Colors.black, fontSize: 15)),
          TextButton(onPressed: () {
            Navigator.pushNamed(context, "signin");
          },
              child: Text(
                "Log In", style: TextStyle(color: Colors.black, fontSize: 25),))
        ]
    ));
  }

  Widget Password() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: SvgPicture.asset("assets/icons/Lock.svg"), // Assuming your lock icon path
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Password';
        }
        return null; // No error for password itself
      },
      onChanged: (value) { // Add onChanged listener
        if (confirmPasswordController.text.isNotEmpty && value != confirmPasswordController.text) {
          passwordError = 'Passwords do not match. Please enter the same password.';
        } else {
          passwordError = null; // Reset error message if password changes
        }
        setState(() {}); // Rebuild the widget to display changes
      },
    );
  }

// Assuming your ConfirmPassword() function returns a TextFormField
  Widget ConfirmPassword() {
    return TextFormField(
      controller: confirmPasswordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Enter Your Password Again",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: SvgPicture.asset("assets/icons/Lock.svg"), // Assuming your lock icon path
        ),
      ),
      onChanged: (value) { // Add onChanged listener
        if (passwordController.text.isNotEmpty && value != passwordController.text) {
          passwordError = 'Passwords do not match. Please enter the same password.';
        } else {
          passwordError = null; // Reset error message if password changes
        }
        setState(() {}); // Rebuild the widget to display changes
      },
    );
  }
}

