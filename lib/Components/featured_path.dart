// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeaturedPath extends StatefulWidget {
  const FeaturedPath({Key? key}) : super(key: key);

  @override
  State<FeaturedPath> createState() => _FeaturedPathState();
}

class _FeaturedPathState extends State<FeaturedPath> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Featured Paths',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 146, 210, 147),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 10,
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage('images/confidence.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ),
                const Positioned(
                    top: 35,
                    left: 120,
                    child: Text(
                      'Self confidence',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                const Positioned(
                    top: 61.8,
                    left: 120,
                    child: Text(
                      "This session will take you through \nbuildingyour self confidence",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )),
                Positioned(
                    top: 90,
                    left: 120,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          side:
                              const BorderSide(width: 2, color: Colors.white)),
                      onPressed: () {
                        debugPrint('Start session');
                      },
                      child: const Text(
                        'Start session',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 146, 210, 147),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 10,
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage('images/dissappointed.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ),
                const Positioned(
                    top: 35,
                    left: 120,
                    child: Text(
                      'Disappointed?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                const Positioned(
                    top: 61.8,
                    left: 120,
                    child: Text(
                      "This session will take you through \ndealing with disappointment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )),
                Positioned(
                    top: 90,
                    left: 120,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          side:
                              const BorderSide(width: 2, color: Colors.white)),
                      onPressed: () {
                        debugPrint('Start session');
                      },
                      child: const Text(
                        'Start Session',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
