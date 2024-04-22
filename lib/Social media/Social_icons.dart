import 'package:flutter/material.dart';
import 'package:log/Social%20media/social_media.dart';
class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Social1(image: "assets/images/facebook_5968764 1.png"),
        SizedBox(width: 20),
        //Social1(image: "aassets/images/google1.png"),
        //   SizedBox(width: 20),
        Social1(image: "assets/images/apple.png"),
      ],
    );
  }
}
