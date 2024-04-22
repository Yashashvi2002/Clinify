import 'package:flutter/material.dart';

import '../../../Themes/constants.dart';



class Person_Info0 extends StatelessWidget {
  const Person_Info0({ Key? key, this.text1, this.text2, this.text3,
  }) : super(key: key);
  final String? text1, text2, text3;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1!,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5,),
          TextFormField(  // Use TextFormField directly
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: text2!,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              fillColor: kPrimaryColor,
              filled: true,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return text3!;
              }
              return null;
            },
          ),
          const SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
