import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '- Ou se connecter avec -',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 80.0, // Set a fixed height for buttons
              child: Column(
                children: [
                  _buildSocialLoginButton(
                    context,
                    'assets/images/google.png',
                    'Continue avec Google',
                    Colors.white,
                    handleGoogleSignIn,
                  ),
                  const SizedBox(height: 10.0),
                  _buildSocialLoginButton(
                    context,
                    'assets/images/facebook.png',
                    'Continue avec Facebook',
                    Colors.blue,
                    handleFacebookSignIn,
                  ),
                  const SizedBox(height: 10.0),
                  _buildSocialLoginButton(
                    context,
                    'assets/images/apple.png',
                    'Continue avec Apple',
                    Colors.black,
                    handleAppleSignIn,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialLoginButton(
      BuildContext context, String imagePath, String text, Color color, VoidCallback onTap) {
    return MaterialButton(
      onPressed: onTap,
      color: color,
      height: 60.0,
      minWidth: double.infinity, // Set button width to match parent
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 30, // Adjust the image height as needed
          ),
          const SizedBox(width: 10.0), // Add space between image and text
          Text(
            text,
            style: TextStyle(color: text == 'Continue avec Google' ? Colors.black : Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // Implement these functions with actual sign-in logic
  void handleGoogleSignIn() {
    // TODO: Implement Google sign-in logic
  }

  void handleFacebookSignIn() {
    // TODO: Implement Facebook sign-in logic
  }

  void handleAppleSignIn() {
    // TODO: Implement Apple sign-in logic
  }
}
