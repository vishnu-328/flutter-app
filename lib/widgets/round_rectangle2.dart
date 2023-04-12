
import 'package:flutter/material.dart';


import '../misc/colors.dart';

class RoundRectangle2 extends StatelessWidget {
  const RoundRectangle2({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/trending/');
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: 87,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.card2,
            image: const DecorationImage(
                alignment: Alignment.centerRight,
                image: AssetImage(
                  'img/rocket.png',
                ),
                fit: BoxFit.fitHeight)),
        child: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Trending Activity 🔥',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Inter',
            ),
          ),
        ),
      ),
    );
  }
}
