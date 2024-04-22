import 'package:flutter/material.dart';
import 'package:log/Themes/constants.dart';

class SplashScreen0 extends StatefulWidget {
  const SplashScreen0({super.key});

  @override
  State<SplashScreen0> createState() => _SplashScreen0State();
}

class _SplashScreen0State extends State<SplashScreen0> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kPrimaryColor,
         child: Column(
           children: [
             Spacer(),
             Image.asset("assets/images/clinify.png"),
             Spacer(),
        TextButton(
          style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>( Colors.white),
              minimumSize: MaterialStateProperty.all<Size>(Size(200, 50))),
            onPressed: (){
              Navigator.pushNamed(context, 'home_screen');
            }, child: Text("Get Started",style: TextStyle(color: Colors.black))),
             Spacer(),
           ],

         ),
      ),
    );
  }
}
