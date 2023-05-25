import 'package:flutter/material.dart';

class PersonIcon extends StatelessWidget {
  const PersonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200]),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Icon(
            Icons.person,
            color: Colors.grey[400],
            size: 16,
          ),
        ),
      ],
    );
  }
}
