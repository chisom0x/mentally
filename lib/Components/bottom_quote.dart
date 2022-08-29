// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomQuote extends StatelessWidget {
  const BottomQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            '________________',
            style: TextStyle(color: Color.fromARGB(255, 146, 210, 147),),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: SizedBox(
            height: 120,
            width: 195,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis gravida, risus sed dapibus congue,Nam in enim rutrum, porta arcu sed, molestie mauris..',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
