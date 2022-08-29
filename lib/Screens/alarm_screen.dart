// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../Components/bottom_quote.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({Key? key}) : super(key: key);

  Widget greetingtext() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good morning ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet\nadipiscing elit Duis gravida risus\nsed dapibus congue, purus ante ',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
    }
    if (hour < 17) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good afternoon ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet\nadipiscing elit Duis gravida risus\nsed dapibus congue, purus ante ',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
    }
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good evening ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet\nadipiscing elit Duis gravida risus\nsed dapibus congue, purus ante ',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
  }

  Widget greetingimage() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return Container(
        height: 120,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.teal,
           image: const DecorationImage(
                            image: AssetImage('images/morning.png'),
                            fit: BoxFit.fill)
        ),
      );
    }
    if (hour < 17) {
      return Container(
        height: 120,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.teal,
           image: const DecorationImage(
                            image: AssetImage('images/afternoon.png'),
                            fit: BoxFit.fill)
        ),
      );
    }
    return Container(
        height: 120,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.teal,
           image: const DecorationImage(
                            image: AssetImage('images/night.png'),
                            fit: BoxFit.fill)
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                color: Colors.teal,
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: greetingtext()),
                        Spacer(),
                       greetingimage()
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Morning 😊',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 146, 210, 147),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Afternoon 🔆',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 146, 210, 147),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Evening 💤',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 146, 210, 147),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 146, 210, 147),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BottomQuote()
            ],
          ),
        ),
      ),
    );
  }
}
