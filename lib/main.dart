import 'package:flutter/material.dart';

import 'package:helloworldapp/body_content.dart';


void main() {
  runApp(const 
      MaterialApp(
      home: Scaffold(
        body: BodyContent( colors : 
          [ Color.fromARGB(255, 22, 5, 98),
        Color.fromARGB(255, 64, 16, 126)])
        ),
      ),
    );
}
// add , after closing parenthesis and enter shift + alt + F to format the code 


