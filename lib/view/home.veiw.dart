import 'package:flutter/material.dart';
import 'package:flutter_location/utils/global.colors.dart'; // Assuming this is for color access
import 'package:flutter_location/view/profil.veiw.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Assuming you need icons from FontAwesome

class HomeView extends StatelessWidget {
  const HomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'This is the content of your Home View',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 20.0),
              // Add more content widgets here (e.g., cards, lists)
              const Divider(color: Colors.white38),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                }, 
                child: null,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(), // Curved shape for bottom navigation bar
        color: GlobalColors.mainColor,
        child: Container(
          height: kBottomNavigationBarHeight + 10, // Increase height for better visibility
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 28.0, // Larger icon size
                ),
                onPressed: () {
                  // Handle tap on the home icon
                },
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                  size: 28.0, // Larger icon size
                ),
                onPressed: () {
                  // Handle tap on the heart icon
                },
              ),
              SizedBox(width: 48.0), // Spacer to create space for the middle icon
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 28.0, // Larger icon size
                ),
                onPressed: () {
                  // Handle tap on the notification icon
                },
              ),
             IconButton(
  icon: Icon(
    Icons.person,
    color: Colors.white, // Icon color should contrast with background
    size: 28.0, // Larger icon size
  ),
  onPressed: () {
    // Navigate to the ProfileView screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Profil()),
    );
  },
),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle tap on the plus icon
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: GlobalColors.mainColor, // Plus icon color
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // Center the plus icon
    );
  }
}
