import 'package:flutter/material.dart';

import '../misc/colors.dart';

class RoundRectangle1 extends StatelessWidget {
  Color color;
  String? upperText;
  RoundRectangle1({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/totalrecived/');
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 87,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
            image: const DecorationImage(
              alignment: Alignment.centerRight,
              image: AssetImage(
                'img/bubble.png',
              ),
            )),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Total Recived',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        color: AppColors.smallText,
                      ),
                    ),
                    Text(
                      '\$ 25,000',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50, top: 20),
                  child: const Text(
                    "+10% sinse last month",
                    style: TextStyle(fontSize: 12, color: AppColors.smallText),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
