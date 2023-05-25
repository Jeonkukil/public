import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';

class HomeBanner extends StatefulWidget {

  final String title;
  final String? subTitle;
  final String? subTitle2;
  final int maxNumber;
  final int number;
  final String image;

  const HomeBanner(
      this.subTitle,
      this.subTitle2,
      {
    required this.title,
    required this.maxNumber,
    required this.number,
    required this.image,
    Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319,
      height: 212,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 20),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 13,
                          color: kPrimaryColors,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.subTitle ?? '',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(height: 3),
                    Text(
                      widget.subTitle2 ?? '',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Text(
                    "${widget.number} / ${widget.maxNumber}"
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 100,
                    height: 100,
                    child:
                    Image.asset(widget.image),
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
