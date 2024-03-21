import 'package:flutter/material.dart';
import 'package:flutter_location/utils/global.colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({Key? key, required this.text, required Null Function() onPressed}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle login logic (if needed)
        // For example, perform a simple check or validation

        // Navigate to the HomeView
      
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
