import 'package:flutter/material.dart';
import 'package:flutter_location/view/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      decoration: BoxDecoration(
        color: Color(0xFF54E6B5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildNavigationItem("assets/images/home.png", 0),
          buildNavigationItem("assets/images/person.png", 1),
        ],
      ),
    );
  }

  Widget buildNavigationItem(String imagePath, int index) {
    return GestureDetector(
      onTap: () {
        onItemTapped(index);
      },
      child: Container(
        width: 50,
        child: Center(
          child: Image.asset(
            imagePath,
            color: selectedIndex == index ? kPrimaryColor : Colors.grey[400],
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}
