import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/product_list_item.dart';
import 'package:peoples_tech/componets/selection_box.dart';
import 'package:peoples_tech/home/components/accumlated_box/accumlated_box.dart';
import 'package:peoples_tech/componets/point_icon.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:intl/intl.dart';
import 'package:peoples_tech/home/components/accumlated_box/accumlated_box2.dart';
import 'package:peoples_tech/home/components/banner/banner_dummy.dart';
import 'package:peoples_tech/home/components/banner/home_banner.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final int walk = 5000;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: ListView(
        children: [
          _topContainer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                AccumlatedBox(),
                SizedBox(width: 10),
                AccumlatedBox2(),
              ],
            ),
          ),
          SelectionBox(
            "돌림판 돌리고 최대 ",
            "500P",
            " 받기",
            title: "일일미션",
            imagePath: 'assets/img/Mission.png',
          ),
          SelectionBox("아지트에서 특별한 휴식을 경험하세요!", null, null,
              title: "휴식하기", imagePath: 'assets/img/Planet.png'),
          _pointShoop(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              width: 319,
              height: 212,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: PageView.builder(
                itemCount: banner.length,
                itemBuilder: (context, index) {
                  return HomeBanner(
                      banner[index].subTitle, banner[index].subTitle2,
                      title: banner[index].title,
                      maxNumber: banner.length,
                      number: index + 1,
                      image: banner[index].image);
                },
              ),
            ),
          ),
          _guide(),
          SizedBox(height: 70),
        ],
      ),
    );
  }

  Container _guide() {
    return Container(
          width: 319,
          height: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " 새로워진 아지트, 어떻게 이용하나요?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.white),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "아지트 이용가이드",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/img/Character.png')
              ],
            ),
          ),
        );
  }

  Container _pointShoop() {
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
                onTap: () {},
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
                    price: 1444,
                    brand: "빽다방",
                    product: "아메리카노(ICE)",
                    image: 'assets/img/drink/Americano.png',
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: ProductListItem(
                    price: 723,
                    brand: "GS25",
                    product: "농심)신라면(봉지)",
                    image: 'assets/img/store/ShinRamen.png',
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: ProductListItem(
                    price: 3211,
                    brand: "버거킹",
                    product: "치즈와퍼",
                    image: 'assets/img/chicken_pizza/CheeseWhopper.png',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Card(
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
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

  Stack _topContainer() {
    return Stack(
      children: [
        Container(
          height: 315,
          width: 335,
          decoration: BoxDecoration(
            color: kPrimaryColors,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.place, color: Colors.white, size: 16),
                          Text(
                            "현재 ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "강남구 서초동 체크인",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "오늘의 걸음 수는",
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                            TextSpan(
                              text: NumberFormat(" #,###").format(walk),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: " 이에요.",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 185,
                        width: 375,
                        child: Image.asset('assets/img/Character.png',
                            fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 32,
                          width: 107,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white, width: 2),
                              color: kPrimaryColors2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PointIcon(),
                              Text(
                                " 휴식하기 25",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
