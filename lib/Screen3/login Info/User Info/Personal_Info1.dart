import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log/Themes/constants.dart';

import 'Personal_Info0.dart';

class PersonalInfoForm1 extends StatefulWidget {
  @override
  _PersonalInfoFormState createState() => _PersonalInfoFormState();
}

class _PersonalInfoFormState extends State<PersonalInfoForm1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(  // Add this
        padding: const EdgeInsets.symmetric(horizontal: 20.0),  // Add this
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Person_Info0(text1 :"Name of User",
                text2:"Enter Your Name",text3:"Please enter your name",),
            Person_Info0(text1 :"Local Address",
              text2:"Enter Your Address",text3:"Please enter your local address",),
            Person_Info0(text1 :"Email Address",
              text2:"Enter Your Email",text3:"Please enter your email address",),
            Person_Info0(text1 :"Contact Number",
              text2:"Enter Your Contact Number",text3:"Please enter your contact number",),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: Text('Save & Next',style: TextStyle(color: Colors.black),),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor, // This is the color of the text
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



