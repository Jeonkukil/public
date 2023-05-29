import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_list/componets/categorie_dummy/categorie_dummy.dart';
import 'package:peoples_tech/pointshop/pointshop_list/componets/categorie_dummy/categorie_grid.dart';

class PointShopBody extends StatelessWidget {
  final int userPoint;




  const PointShopBody({
    required this.userPoint,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
      child: ListView(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: NumberFormat("현재 #,###P 보유 중이에요").format(userPoint),
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "어떤 상품",
                  style: TextStyle(
                      fontSize: 22,
                      color: kPrimaryColors,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "을 구매할까요? 🤑",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 24,
                ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: categorie.length,
              itemBuilder: (context, index) {
                  return CategorieGrid(
                      image: categorie[index].image,
                      menu: categorie[index].menu,
                      userPoint: userPoint);
              },
            ),
          ),

        ],
      ),
    );
  }
}
