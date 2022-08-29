// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class RescueSession extends StatefulWidget {
  const RescueSession({Key? key}) : super(key: key);

  @override
  State<RescueSession> createState() => _RescueSessionState();
}

class _RescueSessionState extends State<RescueSession> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Text(
            'Rescue Sessions',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Text(
            'Quick sessions for difficult emotions',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(
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
                            image: AssetImage('images/rescue.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ),
                const Positioned(
                    top: 35,
                    left: 120,
                    child: Text(
                      'Had a rough day?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                const Positioned(
                    top: 61.8,
                    left: 120,
                    child: Text(
                      "you'll feel better soon",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )),
                Positioned(
                    top: 78,
                    left: 120,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          side:
                              const BorderSide(width: 2, color: Colors.white)),
                      onPressed: () {
                        debugPrint('click me');
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
      ],
    );
  }
}
