import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class Initiated extends StatelessWidget {
  const Initiated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(isAppBarEnabled: false,),
        body: Center(
          child: Text('Initiated ..'),
        ));
    ;
  }
}
