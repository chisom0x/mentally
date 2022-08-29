// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../Components/app_header.dart';
import '../Components/bottom_quote.dart';
import '../Components/emoji_section.dart';
import '../Components/featured_path.dart';
import '../Components/rescue_section.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              AppHeader(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: [
                        Column(
                          children: [
                            EmojiSection(),
                            SizedBox(
                              height: 20,
                            ),
                            RescueSession(),
                            SizedBox(
                              height: 40,
                            ),
                            FeaturedPath(),
                            SizedBox(
                              height: 20,
                            ),
                            BottomQuote()
                          ],
                        ),
                      ])))
            ],
          ))
        ],
      ),
    ));
  }
}
