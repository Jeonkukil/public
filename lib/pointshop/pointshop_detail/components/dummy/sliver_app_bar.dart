import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:peoples_tech/componets/image_icon_box.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/app_bar_category.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/dummy.dart';

class CateGoryAppBar extends StatelessWidget {
  final String selectedMenu;
  final wvm;


  CateGoryAppBar({required this.wvm, required this.selectedMenu, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {


    List<BrandCategory> currentCategories = menuCatagores[selectedMenu] ?? [];

    return SliverAppBar(
      backgroundColor: kBackGround,
      expandedHeight: 130,
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
                        if (currentCategories[index].brandName == '카테고리') {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return _bottomSheet(context, currentCategories);
                            },
                          );
                        }
                        wvm.notifySelectCard(
                            currentCategories[index].brandName);
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

  Material _bottomSheet(
      BuildContext context, List<BrandCategory> currentCategories) {
    return Material(
      color: Colors.white,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.75,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Column(
              children: [
                Text(
                  selectedMenu,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: currentCategories.length - 1,
                  itemBuilder: (BuildContext context, int i) {
                    return InkWell(
                      onTap: () {
                        wvm.notifySelectCard(
                            currentCategories[i + 1].brandName);
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        children: [
                          ImageIconBox(
                            imageheight: 40,
                            imagewidth: 40,
                            containerHeight: 60,
                            containerWidth: 60,
                            boxColor: Colors.white,
                            imagePath: currentCategories[i + 1].brandLogo,
                          ),
                          Text(
                            currentCategories[i + 1].brandName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
