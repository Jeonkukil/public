import 'package:flutter/material.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/sliver_app_bar.dart';

class PointShopDetailBody extends StatefulWidget {

  final String seletedMenu;

  const PointShopDetailBody({
    required this.seletedMenu,
    Key? key}) : super(key: key);

  @override
  State<PointShopDetailBody> createState() => _PointShopDetailBodyState();
}

class _PointShopDetailBodyState extends State<PointShopDetailBody> {

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        CateGoryAppBar(
          selectedMenu: widget.seletedMenu,
        ),
      ],
    );
  }
}
