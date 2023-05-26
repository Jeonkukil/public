import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peoples_tech/componets/point_icon.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';

class ProductItemBox extends StatelessWidget {

  final String products;

  final Map<String, List<Product>> menuproducts = {
    "커피/음료": ProductCoffe,
    "편의점": ProductStore,
    "영화/도서": ProductMovie,
    "베이커리": ProductBakery,
    "치킨/피자": ProductChiken,
    "아이스크림": ProductIce,
    "상품권": ProductVoucher,
    "외식": ProductEatOut,
    "버거": ProductBurger,
  };


 ProductItemBox({
    required this.products,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> currentProducts = menuproducts[products] ?? [];
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
              onTap: () {},
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
                        image: DecorationImage(
                            image: AssetImage(
                                currentProducts[index].productImg!),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          currentProducts[index].brandName,
                          style: TextStyle(
                            fontSize: 10,
                            color: kBlack,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          currentProducts[index].productName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: NumberFormat('#,### ').format(currentProducts[index].productPoint),
                                style: TextStyle(
                                    color: kPrimaryColors,
                                    fontWeight: FontWeight.bold
                                ),
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
          childCount: currentProducts.length,
        ),
      ),
    );
  }
}
