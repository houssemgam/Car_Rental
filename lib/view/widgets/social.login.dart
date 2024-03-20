import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Align buttons to edges
        children: [
          Text(
            '- Ou se connecter avec -',
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center, // Center text
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialLoginButton(context, 'Google', Colors.red,
                  () => handleGoogleSignIn()),
              const SizedBox(width: 20.0),
              _buildSocialLoginButton(context, 'Facebook', Colors.blue,
                  () => handleFacebookSignIn()),
              const SizedBox(width: 20.0),
              _buildSocialLoginButton(context, 'Apple', Colors.black,
                  () => handleAppleSignIn()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLoginButton(
      BuildContext context, String provider, Color color, VoidCallback onTap) {
    return MaterialButton(
      onPressed: onTap,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Use provider-specific icons for Google, Facebook, Apple
          Icon(_getProviderIcon(provider), color: Colors.white),
          const SizedBox(width: 10.0),
          Text(
            provider,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  IconData _getProviderIcon(String provider) {
    // Map provider names to their icons
    switch (provider) {
      case 'Google':
        return Icons.g_mobiledata;
      case 'Facebook':
        return Icons.facebook;
      case 'Apple':
        return Icons.apple;
      default:
        return Icons.lightbulb_outline;
    }
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
