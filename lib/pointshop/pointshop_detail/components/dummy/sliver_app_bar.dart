import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/app_bar_category.dart';

class CateGoryAppBar extends StatelessWidget {


  final List<BrandCategory> brandCategories;

  const CateGoryAppBar({
    required this.brandCategories,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 2,
      expandedHeight: 108,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brandCategories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                  child: InkWell(
                    onTap: () {

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
                                image: AssetImage(brandCategories[index].brandLogo),
                                fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(brandCategories[index].brandName),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
