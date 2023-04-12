import 'package:flutter/material.dart';

import 'package:testapp/widgets/round_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  bool isAppBarEnabled;
  CustomAppBar({super.key, required this.isAppBarEnabled})
      : preferredSize = const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      // actions: isAppBarEnabled
      //     ? [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Container(
      //               height: 65,
      //               width: 40,
      //               decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                   image: AssetImage('img/menu.png'),
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               height: 65,
      //               child: Row(
      //                 children: [
      //                   RoundButton(isIcon: true),
      //                   const SizedBox(width: 10),
      //                   RoundButton(isIcon: false)
      //                 ],
      //               ),
      //             )
      //           ],
      //         )
      //       ]
      //     : null,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 65,
          width: 40,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/menu.png'),
            ),
          ),
        ),
        Container(
          height: 65,
          child: Row(
            children: [
              RoundButton(isIcon: true),
              const SizedBox(width: 10),
              RoundButton(isIcon: false)
            ],
          ),
        )
      ]),
    );
  }
}
