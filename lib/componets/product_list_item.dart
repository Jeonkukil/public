import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/point_icon.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:intl/intl.dart';

class ProductListItem extends StatelessWidget {
  final int price;
  final String image;
  final String brand;
  final String product;

  const ProductListItem(
      {required this.price,
      required this.image,
      required this.brand,
      required this.product,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: kGray, width: 1),
            ),
            child: Center(
              child: Image.asset(image),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brand,
                  style: TextStyle(fontSize: 12, color: kBlack),
                ),
                SizedBox(height: 5),
                Text(
                  product,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: NumberFormat("#,### ").format(price),
              style:
                  TextStyle(color: kPrimaryColors, fontWeight: FontWeight.bold),
            ),
          ),
          PointIcon(),
        ],
      ),
    );
  }
}
