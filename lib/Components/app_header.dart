// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../main.dart';

class AppHeader extends StatefulWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  Widget greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) { 
      return Container(
        child: Text(
          'Good Morning 😊',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    }
    if (hour < 17) {
      return Container(
        child: Text(
          'Good Afternoon 🔆',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container(
      child: Text(
        'Good Evening 💤',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              greeting(),
              // CircleAvatar(
              //   backgroundImage: AssetImage('images/logo.jpg'),
              //   radius: 30.5,
              // ),
              SizedBox(
                width: 80,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17),
                child: IconButton(
                    icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                        ? Icons.light_mode
                        : Icons.dark_mode),
                    onPressed: () {
                      MyApp.themeNotifier.value =
                          MyApp.themeNotifier.value == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light;
                    }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
