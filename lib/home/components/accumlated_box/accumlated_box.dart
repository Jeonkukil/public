import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/image_icon_box.dart';
import 'package:peoples_tech/constants/my_colors.dart';

class AccumlatedBox extends StatelessWidget {
  const AccumlatedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 149,
            height: 152,
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
                            "바로적립",
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
                                    "0 / 10",
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
                          Text(
                            "영상 광고 시청 하고",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.grey[600]),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "20P",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " 받기",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ImageIconBox(
                            containerWidth: 48,
                            containerHeight: 48,
                            imagePath: 'assets/img/Video.png',
                            imageheight: 40,
                            imagewidth: 40,
                            boxColor: Colors.grey[200]!,
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
