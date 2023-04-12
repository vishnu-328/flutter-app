import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  ImageProvider iconImage;
  String smallText;
  String heading;
  Color color;
  String navigation;
  BigCard(
      {super.key,
      required this.iconImage,
      required this.smallText,
      required this.heading,
      required this.color,
      required this.navigation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, navigation);
      },
      child: Container(
        height: 140,
        // width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
            image: const DecorationImage(
                image: AssetImage('img/bubble.png'),
                alignment: Alignment.topRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10),
              height: 30,
              width: 30,
              // color: Colors.black,

              decoration:
                  BoxDecoration(image: DecorationImage(image: iconImage)),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Container(
              margin: const EdgeInsets.only(left: 10, bottom: 10),
              height: 60,
              width: MediaQuery.of(context).size.width * 0.4,

              // width: 130,
              // color: Colors.amberAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    smallText,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    heading,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
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
