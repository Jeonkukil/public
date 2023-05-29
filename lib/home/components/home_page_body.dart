import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/selection_box.dart';
import 'package:peoples_tech/home/components/accumlated_box/accumlated_box.dart';
import 'package:peoples_tech/home/components/accumlated_box/accumlated_box2.dart';
import 'package:peoples_tech/home/components/banner/banner_dummy.dart';
import 'package:peoples_tech/home/components/banner/home_banner.dart';
import 'package:peoples_tech/home/components/bottom_guide.dart';
import 'package:peoples_tech/home/components/radom_product.dart';
import 'package:peoples_tech/home/components/top_container.dart';


class HomePageBody extends StatefulWidget {
  final int userPoint;

  const HomePageBody({
    required this.userPoint,
    Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final int walk = 5000;
  Timer? timer;
  PageController pageController = PageController(initialPage: 0);
  int bannerCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
    const Duration(seconds: 5)
        , (timer) {
      int nextPage = (bannerCurrentIndex + 1) % 3;
      setState(() {
        bannerCurrentIndex = nextPage;
        pageController.animateTo(bannerCurrentIndex * 400.0, duration: const Duration(milliseconds: 500), curve: Curves.linear);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: ListView(
        children: [
          TopContainer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                AccumlatedBox(),
                SizedBox(width: 10),
                AccumlatedBox2(),
              ],
            ),
          ),
          SelectionBox(
            "돌림판 돌리고 최대 ",
            "500P",
            " 받기",
            title: "일일미션",
            imagePath: 'assets/img/Mission.png',
          ),
          SelectionBox("아지트에서 특별한 휴식을 경험하세요!", null, null,
              title: "휴식하기", imagePath: 'assets/img/Planet.png'),
          RandomProduct(userPoint: widget.userPoint),
          // _pointShop(widget.userPoint),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              width: 319,
              height: 212,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: PageView.builder(
                controller: pageController,
                itemCount: banner.length,
                itemBuilder: (context, index) {
                  return HomeBanner(
                      banner[index].subTitle, banner[index].subTitle2,
                      title: banner[index].title,
                      maxNumber: banner.length,
                      number: index + 1,
                      image: banner[index].image);
                },
              ),
            ),
          ),
          BottomGuide(),
          // _guide(),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}
