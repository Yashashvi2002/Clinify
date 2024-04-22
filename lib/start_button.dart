import 'package:flutter/material.dart';

import 'Themes/constants.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key, required this.text, required this.press});
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor ),
                minimumSize: MaterialStateProperty.all<Size>(Size(200, 50))),
            onPressed: press,
            child: Text(text,style: TextStyle(color: Colors.white),)
        ),
      ),
    );
  }
}