import 'package:flutter/material.dart';
import 'package:flutter_location/utils/global.colors.dart'; // Assuming this defines colors
import 'package:flutter_location/view/showroom.dart';
import 'package:flutter_location/view/signup.view.dart';
import 'package:flutter_location/view/widgets/button.global.dart'; // Assuming this is your custom button widget
import 'package:flutter_location/view/widgets/social.login.dart'; // Assuming this is your custom social login widget

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0), // Adjust padding as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo (replace with your logo image or widget)
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/logo2.png'), // Replace with your logo path
                    width: 169,
                    height: 115,
                  ),
                ),
                const SizedBox(height: 40.0),
                // Login Text
                Text(
                  'Se Connecter',
                  style: TextStyle(
                    color: GlobalColors.textColor, // Assuming this is defined
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0), // Adjust spacing as needed

                // Email Input
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next, // For next field focus
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0), // Adjust spacing as needed

                // Password Input
                TextFormField(
                  controller: passwordController,
                  obscureText: true, // Hide password text
                  textInputAction: TextInputAction.done, // For closing keyboard
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0), // Adjust spacing as needed

                // Login Button (replace with your ButtonGlobal widget)
                ButtonGlobal(
                  text: 'Se connecter',
                  onPressed: () {
                    // Navigate to the Showroom screen when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Showroom()),
                    );
                  },
                ),
                const SizedBox(height: 20.0), // Adjust spacing as needed

                // Optional: Forgot Password Text
                TextButton(
                  onPressed: () {
                    // Handle forgot password logic
                  },
                  child: Text(
                    'Mot de passe oublié?',
                    style: TextStyle(
                      color: GlobalColors.textColor, // Assuming this is defined
                      fontSize: 14.0,
                    ),
                  ),
                ),

                const SizedBox(height: 40.0), // Adjust spacing as needed

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Vous n\'avez pas de compte ?',
                      style: TextStyle(
                        color: GlobalColors.textColor, // Assuming this is defined
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupView()),
                        ); // Navigate to the SignupView
                      },
                      child: const Text(
                        'Inscrivez-vous',
                        style: TextStyle(
                          color: Colors.blue, // Or a contrasting color
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20.0), // Adjust spacing as needed

                // Social Login (replace with your SocialLogin widget)
                const SocialLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
