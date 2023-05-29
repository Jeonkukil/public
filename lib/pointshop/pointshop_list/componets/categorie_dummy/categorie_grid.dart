import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/controller/list_controller.dart';
import 'package:peoples_tech/controller/static_controller.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/pointshop_detail_page.dart';

class CategorieGrid extends ConsumerWidget {
  final int userPoint;
  final String image;
  final String menu;

  final Map<String, List<Product>> menuproducts = {
    "커피/음료": ProductCoffe != null ? ProductCoffe! : [],
    "편의점": ProductStore != null ? ProductStore! : [],
    "영화/도서": ProductMovie != null ? ProductMovie! : [],
    "베이커리": ProductBakery != null ? ProductBakery! : [],
    "치킨/피자": ProductChiken != null ? ProductChiken! : [],
    "아이스크림": ProductIce != null ? ProductIce! : [],
    "상품권": ProductVoucher != null ? ProductVoucher! : [],
    "외식": ProductEatOut != null ? ProductEatOut! : [],
    "버거": ProductBurger != null ? ProductBurger! : [],
  };

   CategorieGrid({
     required this.userPoint,
     required this.image, required this.menu, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final listtp = ref.read(listtemp.notifier);
    List<Product> currentProducts = menuproducts[menu] ?? [];

    final vm = ref.read(temp.notifier);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          listtp.notifyGridCard(currentProducts);
          vm.notifyBradnName(menu);
          // 파라미터로 갈 수 있게 수정필요
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => PointShopDetail(menu: menu, userPoint: userPoint),),);
        },
        borderRadius: BorderRadius.circular(30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: kGray, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    image,
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(height: 5),
                Expanded(
                  flex: 1,
                  child: Text(
                    menu,
                    style: TextStyle(
                      color: kBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
