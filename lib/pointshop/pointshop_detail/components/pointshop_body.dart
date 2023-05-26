import 'package:flutter/material.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/app_bar_category.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/sliver_app_bar.dart';

class PointShopDetailBody extends StatelessWidget {
  const PointShopDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CateGoryAppBar(
          brandCategories: brandCategory,
        ),
      ],
    );
  }
}
