import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testapp/widgets/appbar.dart';
import 'package:testapp/widgets/bottom_button.dart';
import 'package:testapp/widgets/bottom_navigation.dart';
import 'package:testapp/widgets/round_rectangle1.dart';
import 'package:testapp/widgets/round_rectangle2.dart';
import 'package:testapp/widgets/small_card.dart';

import '../misc/colors.dart';
import '../widgets/big_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          isAppBarEnabled: true,
        ),
        body: isLoading
            ? Container(
                child: const Center(child: CircularProgressIndicator()),
              )
            : Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    RoundRectangle1(color: AppColors.card1),
                    const SizedBox(height: 10),
                    const RoundRectangle2(),
                    const SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        'Campaings',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      // margin: const EdgeInsets.only(left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.35,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  BigCard(
                                      navigation: '/completed/',
                                      smallText: "completed",
                                      heading: '15 Campaigns',
                                      color: AppColors.leftTop,
                                      iconImage:
                                          const AssetImage('img/icon1.png')),
                                  SmallCard(
                                      navigation: '/rejected/',
                                      text: 'Rejected',
                                      color: AppColors.bottomLeft,
                                      iconImage:
                                          const AssetImage('img/icon3.png'))
                                ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SmallCard(
                                      text: 'Ongoing',
                                      color: AppColors.topRight,
                                      iconImage:
                                          const AssetImage('img/icon2.png'),
                                      navigation: '/ongoing/'),
                                  BigCard(
                                    iconImage:
                                        const AssetImage('img/icon4.png'),
                                    smallText: 'Initiated by you',
                                    heading: '15 Campaigns',
                                    color: AppColors.bottomRight,
                                    navigation: '/initiated/',
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                    BottomButton(
                      navigation: '/roundbutton/',
                    )
                  ],
                ),
              ),
        bottomNavigationBar: const BottomNavigation());
  }
}
