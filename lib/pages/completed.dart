import 'package:flutter/material.dart';

import 'package:testapp/widgets/appbar.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          isAppBarEnabled: false,
        ),
        body: Center(
          child: Text('Completed...'),
        ));
    ;
  }
}
