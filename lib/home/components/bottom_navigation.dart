import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[300],
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), label: '내 지갑'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: '이벤트'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),

        ],
      ),
    );
  }
}
