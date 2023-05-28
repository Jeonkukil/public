import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';

class PointShopHistoryAppBar extends StatelessWidget {
  const PointShopHistoryAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "포인트샵",
        style: TextStyle(
          color: Colors.black,
        ),
      ),

      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: kGray),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
