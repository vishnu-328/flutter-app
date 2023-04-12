import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RoundButton extends StatelessWidget {
  bool isIcon;

  RoundButton({super.key, required this.isIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          border: isIcon == true
              ? null
              : Border.all(width: 2.0, color: Colors.grey.withOpacity(0.9)),
          borderRadius: BorderRadius.circular(15),
          color: isIcon == true ? Colors.grey.shade200 : Colors.white,
          image: isIcon == true
              ? DecorationImage(image: AssetImage('img/notification.png'))
              : DecorationImage(
                  image: AssetImage('img/avatar.png'), fit: BoxFit.fill)),
    );
  }
}
