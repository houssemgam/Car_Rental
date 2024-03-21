import 'package:flutter/material.dart';
import 'package:flutter_location/utils/global.colors.dart'; // Assuming this defines colors
import 'package:flutter_location/view/login.veiw.dart';
import 'package:flutter_location/view/widgets/button.global.dart';
import 'package:flutter_location/view/widgets/social.login.dart'; // Assuming this is your custom button widget

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController(); // New controller for phone number
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // Adjust width or use constraints if needed
            padding: const EdgeInsets.all(20.0), // Adjust padding as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo (replace with your logo image or widget)
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/logo2.png'), // Replace with your logo path
                              width: 169,
                             height: 115,                   ),
                ),
                const SizedBox(height: 40.0), 
                Text(
                  'Crée un compte',
                  style: TextStyle(
                    
                    color: GlobalColors.textColor, // Assuming this is defined
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0), // Adjust spacing as needed// Adjust spacing after logo

                // **Main Content Area** (Replace with your image's layout)
                Container(
                  // Adjust container properties (color, border, etc.) based on your image
                  padding: const EdgeInsets.all(20.0), // Adjust padding as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // **Text Fields** (Adjust position and style based on your image)
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next, // For next field focus
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0), // Adjust spacing between fields

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
                      const SizedBox(height: 10.0), // Adjust spacing between fields

                      // **New Phone Number Field**
                      TextFormField(
                        controller: phoneController, // Use the new controller
                        keyboardType: TextInputType.phone, // Set keyboard type for phone numbers
                        textInputAction: TextInputAction.next, // For next field focus
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0), // Adjust spacing between fields

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
                      const SizedBox(height: 20.0), // Adjust spacing after password field
                    ],
                  ),
                ),

                // **Signup Button** (Replace with your ButtonGlobal widget or create a new one)
                ButtonGlobal(
                  text: 'Sign Up',
                  onPressed: () {
                    // Handle signup logic
                    // You can access the phone number using phoneController.text
                  },
                ),
                const SizedBox(height: 20.0), // Adjust spacing after button

                // **Optional: Terms and Conditions Text**
               Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      'Vous avez déjà un compte ?',
      style: TextStyle(
        color: GlobalColors.textColor,
        fontSize: 14.0,
      ),
    ),
    const SizedBox(width: 10.0),
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginView()),
        ); // Navigate to the SignupView
      },
      child: const Text(
        'Connectez-vous',
        style: TextStyle(
          color: Colors.blue,
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
