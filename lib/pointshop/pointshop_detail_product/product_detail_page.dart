import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail_product/componets/product_detail_app_bar.dart';
import 'package:peoples_tech/pointshop/pointshop_detail_product/componets/product_detail_body.dart';
import 'package:peoples_tech/pointshop/pointshop_list/componets/pointshop_app_bar.dart';

class PorductDetailPage extends StatelessWidget {
  final int userPoint;
  final int selectedProductIndex;

  const PorductDetailPage(
      {required this.userPoint, required this.selectedProductIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: PointShopDetailAppBar(),
      ),
      body: ProductDetailBody(
          selectedProductIndex: selectedProductIndex, userPoint: userPoint),
    );
  }
}
