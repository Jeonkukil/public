import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peoples_tech/componets/point_icon.dart';
import 'package:peoples_tech/constants/my_colors.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int walk = 5000;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kPrimaryColors,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: kGray)
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
                      SizedBox(height: 10),
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
