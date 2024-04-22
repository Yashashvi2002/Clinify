import 'package:flutter/material.dart';
import 'package:log/Themes/size_configration.dart';
import 'package:log/first%20page/start.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Back",style:TextStyle(fontWeight: FontWeight.bold) ,),
        ),
        body: Start_Page(),
      ),
    );
  }
}
