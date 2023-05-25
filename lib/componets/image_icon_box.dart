import 'package:flutter/material.dart';

class ImageIconBox extends StatelessWidget {

  final double containerWidth;
  final double containerHeight;
  final double imagewidth;
  final double imageheight;
  final String imagePath;
  final Color boxColor;

  const ImageIconBox({
    required this.boxColor,
    required this.containerWidth,
    required this.containerHeight,
    required this.imagewidth,
    required this.imageheight,
    required this.imagePath,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: boxColor),
      child: Center(
        child: Image.asset(
            imagePath,
          width: imagewidth,
          height: imageheight
        ),
      ),
    );
  }
}
