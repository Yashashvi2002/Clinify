import 'package:flutter/material.dart';
class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
        floatingLabelBehavior: FloatingLabelBehavior.always ,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your Email';
        }
        return null;
      },
    );
  }
}
