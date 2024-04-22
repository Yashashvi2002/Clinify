import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'Personal_Info1.dart';
import '../Profile.dart';

class LogIn_1 extends StatefulWidget {
  const LogIn_1({super.key});


  @override
  State<LogIn_1> createState() => _LogIn_1State();
}

class _LogIn_1State extends State<LogIn_1> {

  File? imageFile;

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
        PersonalInfoForm1()
      ],
    );
  }
}





