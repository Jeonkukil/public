import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_history/componets/pointshop_history_appbar.dart';

class PointshopHistoryPage extends StatelessWidget {
  const PointshopHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: PointShopHistoryAppBar(),
      ),
      body: Center(
        child: Text("중앙"),
      ),
    );
  }
}


