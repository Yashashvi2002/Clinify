import 'package:flutter/material.dart';

class Social1 extends StatefulWidget {
  const Social1({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  State<Social1> createState() => _Social1State();
}

class _Social1State extends State<Social1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle Google login
      },
      child: Image.asset(
        widget.image, // Use the provided image path
        width: 25,
        height: 25,

        // Add any additional styling properties here
      ),
    );
  }
}

