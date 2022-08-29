// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Components/emoji_slide.dart';

class EmojiSection extends StatelessWidget {
  const EmojiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'How do you feel today?',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Select an emoji that defines your emotions',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EmojiSlide('images/cry.png'),
              EmojiSlide('images/angry.png'),
              EmojiSlide('images/happy.png'),
              EmojiSlide('images/sadder.png'),
              EmojiSlide('images/slightsmile.png'),
              EmojiSlide('images/speechless.png'),
            ],
          ),
        ),
      ],
    );
  }
}
