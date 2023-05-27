
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/app_bar_category.dart';

class CateGoryAppBar extends StatelessWidget {
  final String selectedMenu;
  final wvm;

  final Map<String, List<BrandCategory>> menuCatagores = {
    "커피/음료": brandCategoryCoffee,
    "아이스크림": brandCategoryIceCream,
    "편의점": brandCategoryStore,
    "베이커리": brandCategoryBakery,
    "치킨/피자": brandCategoryChicken,
    "영화/도서": brandCategoryMovie,
    "상품권": brandCategoryVoucher,
    "외식": brandCategoryEatOut,
    "버거": brandCategoryBurger,
  };

  CateGoryAppBar({
    required this.wvm,
    required this.selectedMenu, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BrandCategory> currentCategories = menuCatagores[selectedMenu] ?? [];

    return SliverAppBar(
      backgroundColor: kBackGround,
      expandedHeight: 110,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: Material(
            color: kBackGround,
            elevation: 1,
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: currentCategories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: InkWell(
                      onTap: () {
                        wvm.notifySelectCard(currentCategories[index].brandName);

                        // vm.notifyBradnName(currentCategories[index].brandName);
                        // Logger().d(currentCategories[index].brandName);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: kGray),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    currentCategories[index].brandLogo!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(currentCategories[index].brandName),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
