import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/home/components/app_bar.dart';
import 'package:peoples_tech/home/components/bottom_navigation.dart';
import 'package:peoples_tech/home/components/home_page_body.dart';


class HomePage extends StatelessWidget {
  final int userPoint;
  const HomePage({
    required this.userPoint, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: HomeAppBar(userPoint: userPoint),
      ),
      body: HomePageBody(userPoint: userPoint),
      bottomNavigationBar: BottomNavigation(),
      bottomSheet: Container(
        height: 48,
        width: double.infinity,
        color: kPrimaryColors,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "하루 최대 10P 보너스 포인트 받는 법",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
