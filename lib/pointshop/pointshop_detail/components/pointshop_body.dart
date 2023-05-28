import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:peoples_tech/componets/product_item_box.dart';
import 'package:peoples_tech/controller/list_controller.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/sliver_app_bar.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/select_box.dart';

class PointShopDetailBody extends ConsumerWidget {
  final String selectedMenu;
  final String products;
  final int userPoint;

  const PointShopDetailBody(
      {
        required this.userPoint,
        required this.selectedMenu, required this.products, Key? key})
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
        SelectBox(
        ),
        ProductItemBox(
          products: products,
          userPoint: userPoint,
        ),
      ],
    );
  }
}
