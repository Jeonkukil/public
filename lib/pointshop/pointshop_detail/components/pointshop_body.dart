import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peoples_tech/componets/point_icon.dart';
import 'package:peoples_tech/componets/product_item_box.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/sliver_app_bar.dart';

class PointShopDetailBody extends StatefulWidget {
  final String selectedMenu;
  final String products;

  const PointShopDetailBody(
      {required this.selectedMenu, required this.products, Key? key})
      : super(key: key);

  @override
  State<PointShopDetailBody> createState() => _PointShopDetailBodyState();
}

class _PointShopDetailBodyState extends State<PointShopDetailBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CateGoryAppBar(
          selectedMenu: widget.selectedMenu,
        ),
        _selectBox(),
        ProductItemBox(
          products: widget.products,
        ),
      ],
    );
  }

  SliverToBoxAdapter _selectBox() {
    return SliverToBoxAdapter(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 230, right: 10),
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "낮은가격순 ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
