import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_list/componets/pointshop_app_bar.dart';
import 'package:peoples_tech/pointshop/pointshop_list/componets/pointshop_body.dart';

class PointShopListPage extends StatelessWidget {
  final int userPoint;
  const PointShopListPage({
    required this.userPoint,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: PointShopAppBar(),
      ),
      body: PointShopBody(userPoint: userPoint),
    );
  }
}
