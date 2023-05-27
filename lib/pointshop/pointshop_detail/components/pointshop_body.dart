import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:peoples_tech/componets/product_item_box.dart';
import 'package:peoples_tech/controller/list_controller.dart';
import 'package:peoples_tech/controller/static_controller.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/sliver_app_bar.dart';

class PointShopDetailBody extends ConsumerWidget {
  final String selectedMenu;
  final String products;

  const PointShopDetailBody(
      {required this.selectedMenu, required this.products, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final wvm = ref.read(listtemp.notifier);

    return CustomScrollView(
      slivers: [
        CateGoryAppBar(
          wvm: wvm,
          selectedMenu: selectedMenu,
        ),
        _selectBox(),

        ProductItemBox(
          products: products,

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
