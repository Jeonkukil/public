import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/pointshop_app_bar.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/pointshop_body.dart';

class PointShopDetail extends StatelessWidget {
  final String menu;
  const PointShopDetail({
    required this.menu,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: PointshopDetailAppBar(menu: menu),
      ),
      body: PointShopDetailBody(selectedMenu: menu, products: menu),
    );
  }
}
