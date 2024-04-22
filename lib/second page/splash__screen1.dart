import 'package:flutter/material.dart';
import 'package:log/Themes/constants.dart';
class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // SizedBox(height: 250,),
            Image.asset("assets/images/clinify.png",height: 500,width: 1500,),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>( Colors.white),
                        minimumSize: MaterialStateProperty.all<Size>(Size(150, 50))),
                    onPressed: (){
                      Navigator.pushNamed(context, 'signin');
                    }, child: Text("Hospital",style: TextStyle(color: Colors.black),)),
                SizedBox(width: 50,),
                TextButton(
                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>( Colors.black),
                        minimumSize: MaterialStateProperty.all<Size>(Size(150, 50))),
                    onPressed: (){
                      Navigator.pushNamed(context, 'signin');
                    }, child: Text("User",style: TextStyle(color: Colors.white))),
              ],
            ),
      
          ],
        ),
      ),
    );
  }
}
