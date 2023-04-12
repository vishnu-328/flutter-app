import 'package:flutter/material.dart';

import '../misc/colors.dart';

class BottomButton extends StatelessWidget {
  String navigation;
   BottomButton({super.key,required this.navigation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, navigation);
      },
      child: Container(
        // color: Colors.amber,
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.bottom,
                    image: const DecorationImage(
                        image: AssetImage('img/game.png')))),
          ],
        ),
      ),
    );
  }
}
