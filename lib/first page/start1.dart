import 'package:flutter/material.dart';
import 'package:log/Themes/size_configration.dart';

import '../Themes/constants.dart';
class Start1 extends StatelessWidget {
  const Start1({super.key,
    required this.text,
    required this.image});
  final String text,image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Spacer(),
          Text(
            "Clinify",
            style: TextStyle(
              fontSize: SizeConfig().getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
            fontSize: SizeConfig().getProportionateScreenWidth(10),
            fontWeight: FontWeight.bold,)
          ),
          Image.asset(
            image,
            height: MediaQuery.of(context).size.height * 0.5, // Adjust the factor as needed
            width: MediaQuery.of(context).size.width * 1.5, // Adjust the factor as needed
          )
        ],
      ),
    );
  }
}
