import 'package:flutter/material.dart';

class PointIcon extends StatelessWidget {
  const PointIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
        ),
        Positioned(
          top: 3,
          left: 3,
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amberAccent,
            ),
          ),
        ),
        Positioned(
          top: 4,
          left: 7,
          child: Text("P", style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),),
        )
      ],
    );
  }
}
