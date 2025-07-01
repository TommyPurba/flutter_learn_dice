import 'package:flutter/material.dart';

import 'package:app_two/gradient_decoration.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: DecorationGradient( Color.fromARGB(255, 255, 35, 3),  Color.fromARGB(244, 224, 177, 128),),
      ),
    )
  );
} 

