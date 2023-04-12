import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../misc/colors.dart';

class SmallCard extends StatelessWidget {
  ImageProvider iconImage;
  Color color;
  String text;
  String navigation;
  SmallCard(
      {super.key,
      required this.color,
      required this.text,
      required this.iconImage,
      required this.navigation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, navigation);
      },
      child: Container(
        height: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
            image: DecorationImage(
                image: AssetImage('img/bubble.png'),
                alignment: Alignment.topRight)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 20),
              height: 20,
              width: 20,
              decoration:
                  BoxDecoration(image: DecorationImage(image: iconImage)),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 50,
              // color: Colors.amberAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 15, color: AppColors.smallText),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '24 Campaigns',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
