import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:peoples_tech/componets/point_icon.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/controller/list_controller.dart';
import 'package:peoples_tech/controller/static_controller.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';

class ProductItemBox extends ConsumerWidget {
  final String products;

  // final Map<String, List<Product>> menuproducts = {
  //   "커피/음료": ProductCoffe != null ? ProductCoffe! : [],
  //   "편의점": ProductStore != null ? ProductStore! : [],
  //   "영화/도서": ProductMovie != null ? ProductMovie! : [],
  //   "베이커리": ProductBakery != null ? ProductBakery! : [],
  //   "치킨/피자": ProductChiken != null ? ProductChiken! : [],
  //   "아이스크림": ProductIce != null ? ProductIce! : [],
  //   "상품권": ProductVoucher != null ? ProductVoucher! : [],
  //   "외식": ProductEatOut != null ? ProductEatOut! : [],
  //   "버거": ProductBurger != null ? ProductBurger! : [],
  // };

  ProductItemBox({required this.products, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listtp = ref.watch(listtemp);
    Logger().d(products + "확인용디버깅");

    // List<Product> currentProducts = menuproducts[products] ?? [];

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 2 / 3,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return InkWell(
              onTap: () {
                Logger().d(index);
              },
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      height: 151,
                      width: 151,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: kGray),
                      ),
                      child: _buildProduchtImg(
                        listtp?.gridCard2[index].productImg,
                        // currentProducts[index].productImg
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          listtp!.gridCard2[index].brandName,
                          // currentProducts[index].brandName ?? '',
                          style: TextStyle(
                            fontSize: 10,
                            color: kBlack,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          listtp.gridCard2[index].productName,
                          // currentProducts[index].productName ?? '',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: NumberFormat('#,### ').format(
                                    listtp.gridCard2[index].productPoint
                                    // currentProducts[index].productPoint ??
                                    //     0
                                    ),
                                style: TextStyle(
                                    color: kPrimaryColors,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            PointIcon(),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          childCount: listtp?.gridCard2.length,
        ),
      ),
    );
  }

  Widget _buildProduchtImg(String? priductImg) {
    if (priductImg != null) {
      return Image.asset(
        priductImg,
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset("assets/img/Game.png");
    }
  }
}
