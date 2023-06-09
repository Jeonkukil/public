import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/person_icon.dart';
import 'package:intl/intl.dart';


class HomeAppBar extends StatefulWidget {
  final int userPoint;


  const HomeAppBar({
    required this.userPoint,
    Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GestureDetector(
          onTap: () {

          },
          child: Row(
            children: [
              PersonIcon(),
              SizedBox(width: 8),
              Text(
                NumberFormat('#,##0 P 모았어요! ').format(widget.userPoint), style: TextStyle(color: Colors.black),
              ),
              Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey)
            ],
          ),
        ),
      ),
    );
  }
}
