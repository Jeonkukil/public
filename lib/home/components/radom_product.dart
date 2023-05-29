import 'dart:math';

import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/product_list_item.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';
import 'package:peoples_tech/pointshop/pointshop_list/pointshop_list_page.dart';

class RandomProduct extends StatefulWidget {
  final int userPoint;

  const RandomProduct({required this.userPoint, Key? key}) : super(key: key);

  @override
  State<RandomProduct> createState() => _RandomProductState();
}

class _RandomProductState extends State<RandomProduct> {
  @override
  Widget build(BuildContext context) {
    final int selectedProductIndex;

    bool isRandomized = true;

    List<Product> allProducts = [
      ...ProductCoffe,
      ...ProductStore,
      ...ProductMovie,
      ...ProductChiken,
      ...ProductIce,
      ...ProductBakery,
      ...ProductVoucher,
      ...ProductBurger,
      ...ProductEatOut,
    ];

    Random random = Random();

    return Container(
      width: 320,
      height: 376,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 20,
            top: 20,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  setState(() {
                    isRandomized = !isRandomized;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: kGray,
                    child: Icon(Icons.restart_alt),
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "포인트샵",
                        style: TextStyle(
                          color: kPrimaryColors,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "차곡차곡 모은 포인트로",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "다른 사람들은 아래 상품을 구매했어요",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: ProductListItem(
                    price: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productPoint
                        : allProducts[0].productPoint,
                    brand: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .brandName
                        : allProducts[0].brandName,
                    product: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productName
                        : allProducts[0].productName,
                    image: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productImg
                        : allProducts[0].productImg,
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: ProductListItem(
                    price: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productPoint
                        : allProducts[1].productPoint,
                    brand: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .brandName
                        : allProducts[1].brandName,
                    product: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productName
                        : allProducts[1].productName,
                    image: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productImg
                        : allProducts[1].productImg,
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: ProductListItem(
                    price: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productPoint
                        : allProducts[2].productPoint,
                    brand: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .brandName
                        : allProducts[2].brandName,
                    product: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productName
                        : allProducts[2].productName,
                    image: isRandomized
                        ? allProducts[random.nextInt(allProducts.length)]
                            .productImg
                        : allProducts[2].productImg,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Card(
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) =>
                              PointShopListPage(userPoint: widget.userPoint),
                        ),
                      );
                    },
                    child: Container(
                      height: 56,
                      width: 279,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: kGray)),
                      child: Center(
                        child: Text(
                          "포인트샵 바로가기",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
