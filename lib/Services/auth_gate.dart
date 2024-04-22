// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import '../Screen4/User/User-Interface.dart';
// import '../Splash Screen/splash_screen0.dart';
//
// class AuthGate extends StatelessWidget {
//   const AuthGate({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder:(context, snapshot){
//           if(snapshot.hasData){
//           return const UserInterface();
//         }
//         else{
//           return const SplashScreen0();
//       }
//   }
//       ),
//     );
//   }
// }
