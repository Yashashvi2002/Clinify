import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always ,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(20,15,20,15),
          child: SvgPicture.asset("assets/icons/Lock.svg"),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Password';
        }
        return null;
      },
    );
  }
}
