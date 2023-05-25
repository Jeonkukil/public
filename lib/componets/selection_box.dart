import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/image_icon_box.dart';
import 'package:peoples_tech/constants/my_colors.dart';

class SelectionBox extends StatelessWidget {
  final String title;
  final String textSpan;
  final String? textSpan2;
  final String? textSpan3;
  final String imagePath;

  const SelectionBox(
      this.textSpan,
      this.textSpan2,
      this.textSpan3,
      {required this.title, required this.imagePath, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 319,
            height: 92,
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                  child: Row(
                    children: [
                      ImageIconBox(
                          boxColor: kPink,
                          containerWidth: 48,
                          containerHeight: 48,
                          imagewidth: 35,
                          imageheight: 32,
                          imagePath: imagePath),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColors,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 4),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: textSpan,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: kBlack,
                                    ),
                                  ),
                                  TextSpan(
                                    text: textSpan2,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: textSpan3,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: kBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
