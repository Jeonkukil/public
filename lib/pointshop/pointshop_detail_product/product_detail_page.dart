import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail_product/componets/product_detail_body.dart';
import 'package:peoples_tech/pointshop/pointshop_list/componets/pointshop_app_bar.dart';

class PorductDetailPage extends StatelessWidget {
  const PorductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: PointShopAppBar(),
      ),
      body: ProductDetailBody(),
    );
  }
}
