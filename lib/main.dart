

import 'package:flutter/material.dart';
import 'package:testapp/pages/completed.dart';
import 'package:testapp/pages/home.dart';
import 'package:testapp/pages/initiated.dart';
import 'package:testapp/pages/ongoing.dart';
import 'package:testapp/pages/playbutton.dart';
import 'package:testapp/pages/rejected.dart';
import 'package:testapp/pages/total_recived.dart';
import 'package:testapp/pages/trending_activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      routes: {
      '/home/': (context) => const Home(),
      '/totalrecived/': (context) => const TotalRecived(),
      '/trending/':(context) => const TrendingActivity(),
      '/rejected/': (context) => const Rejected(),
      '/ongoing/': (context) => const Ongoing(),
      '/initiated/': (context) => const Initiated(),
      '/completed/': (context) => const Completed(),
      '/roundbutton/' : (context) => const PlayButton()
    },
    );
  }
}
