import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/image_icon_box.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/app_bar_category.dart';

class CategoryBottomSheet extends StatelessWidget {

final String selectedMenu;
final List<BrandCategory> categories;


  const CategoryBottomSheet({
    required this.selectedMenu,
    required this.categories,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // BottomSheet의 높이 설정
        height: MediaQuery.of(context).size.height * 0.75,
        child: Padding(
          padding:
          const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Text(
                selectedMenu,
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                  itemCount: categories.length - 1,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    BrandCategory brand =
                    categories[index + 1];
                    return InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          ImageIconBox(
                            boxColor: kBlack,
                            containerWidth: 50,
                            containerHeight: 50,
                            imagePath: brand.brandLogo!,
                            imageheight: 50,
                            imagewidth: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            brand.brandName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: kGray)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
