import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/image_icon_box.dart';
import 'package:peoples_tech/constants/my_colors.dart';

class AccumlatedBox2 extends StatelessWidget {
  const AccumlatedBox2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "미션적립",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColors,
                                fontSize: 16),
                          ),
                          SizedBox(width: 5),
                          Stack(
                            children: [
                              Container(
                                width: 44,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                  BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Text(
                                    "무제한",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "원하는 미션 골라서 참여하고 포인트 받기",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.grey[600],

                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ImageIconBox(
                            containerWidth: 48,
                            containerHeight: 48,
                            imagePath: 'assets/img/Game.png',
                            imagewidth: 35,
                            imageheight: 35,
                            boxColor: kSkyBule,
                          ),
                        ],
                      ),
                    ],
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
