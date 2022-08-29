// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PathSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SizedBox(
        height: 200,
        width: 200,
         child: Text('BUILD THE UI OF THIS SCREEN BY FOLLOWING THE UI DESIGN I GAVE YOU, YOU CAN USE ANY IMAGE FROM THE IMAGES FOLDER I WILL GET THE REQUIRED ILLUSTRATION LATER..You can clear off this widget', 
         style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
         ),),
       )
       
      ],
    );
  }
}
