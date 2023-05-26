import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/pointshop_detail_page.dart';

class CategorieGrid extends StatelessWidget {
  final String image;
  final String menu;

  const CategorieGrid({required this.image, required this.menu, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {

          // 파라미터로 갈 수 있게 수정필요
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => PointShopDetail(),),);
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
