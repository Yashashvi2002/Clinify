import 'package:flutter/material.dart';
import 'package:log/Screen4/Hospital/Hospital-Interface.dart';

import 'package:log/Themes/constants.dart';
import 'package:log/first%20page/start.dart';

import 'Screen2/SignIn/signin.dart';
import 'Screen2/SignIn/signin1.dart';
import 'Screen2/SignUp/sign_up.dart';
import 'Screen2/SignUp/signup1.dart';
import 'Screen3/login Info/Hospital Info/login00.dart';
import 'Screen3/login Info/Hospital Info/login2.dart';
import 'Screen3/login Info/User Info/login.dart';
import 'Screen4/User/User-Interface.dart';
import 'second page/splash__screen1.dart';
import 'Splash Screen/splash_screen0.dart';
import 'home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'splash_screen0',
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,

        ),
          inputDecorationTheme: inputDecorationTheme()

      ),

      routes:
  {
    'home_screen' :(context) => HomeScreen(),//2
    'start' :(context) => Start_Page(),
    'signin' :(context) => Sign_in(),//3
    'signin1' :(context) => Sign_in1(),
    'sign_up' :(context) => Sign_Up(),
    'signup1' :(context) => SignUp1(),
    'login'   :(context) => LogIn(),
    'login2'   :(context) => LogIn_2(),
    'login00'   :(context) => Login_00(),
    'splash_screen0' :(context) => SplashScreen0(),//0
    'splash_screen1' :(context) => SplashScreen1(),//1
    'User-Interface' :(context) => UserInterface(),
    'Hospital-Interface' :(context) => HospitalInterface(),
  }

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


InputDecorationTheme inputDecorationTheme(){
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      gapPadding: 10);
      return InputDecorationTheme(
          //floatingLabelBehavior: FloatingLabelBehavior.always ,
          contentPadding: EdgeInsets.symmetric(
              horizontal: 42,
              vertical: 10
          ),

          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
        border: outlineInputBorder
      );

}
