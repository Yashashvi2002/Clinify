import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.google,
              color: Colors.black,
              size: 35,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.facebook,
              color: Colors.black,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.apple,
              color: Colors.black,
              size: 40,
            ),
          ),
      ],
     );
  }
}
