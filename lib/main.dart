import 'package:flutter/material.dart';
import 'package:flutter_location/view/constants.dart';
import 'package:flutter_location/view/profile/profile_screen.dart';
import 'package:flutter_location/view/showroom.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Showroom(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
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
        children: buildNavigationItems(),
      ),
    );
  }

  List<Widget> buildNavigationItems() {
    return [
      buildNavigationItem(
        iconPath: "assets/images/home.png",
        selectedIndex: 0,
      ),
      buildNavigationItem(
        iconPath: "assets/images/person.png",
        selectedIndex: 1,
      ),
    ];
  }

  Widget buildNavigationItem({required String iconPath, required int selectedIndex}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = selectedIndex;
        });
      },
      child: Container(
        width: 50,
        child: Center(
          child: Image.asset(
            iconPath,
            color: _selectedIndex == selectedIndex ? kPrimaryColor : Colors.grey[400],
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
