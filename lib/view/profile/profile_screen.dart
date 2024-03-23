import 'package:flutter/material.dart';
import 'package:flutter_location/view/profile/modifier_profil.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(166, 234, 211, 1.0), // RGB(166, 234, 211)
                    Color.fromRGBO(93, 230, 184, 1.0), // RGB(93, 230, 184)
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      const ProfilePic(),
                      const SizedBox(height: 40),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ProfileMenu(
                              text: "Modifier le profile",
                              icon: "assets/images/person.png",
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ModifierProfil(),
                                  ),
                                );
                              },
                              textStyle: const TextStyle(color: Colors.black),
                            ),
                            ProfileMenu(
                              text: "Sécurité",
                              textStyle: const TextStyle(color: Colors.black),
                              icon: "assets/images/securite.png",
                              press: () {},
                            ),
                            ProfileMenu(
                              text: "Paramètres",
                              icon: "assets/images/Parametres.png",
                              textStyle: const TextStyle(color: Colors.black),
                              press: () {},
                            ),
                            ProfileMenu(
                              text: "Mes voitures",
                              icon: "assets/images/heart.png",
                              textStyle: TextStyle(color: Colors.black),
                              press: () {},
                            ),
                            ProfileMenu(
                              text: "Historique des transactions",
                              icon: "assets/images/wallet.png",
                              textStyle: TextStyle(color: Colors.black),
                              press: () {},
                            ),
                            ProfileMenu(
                              text: "FAQ",
                              icon: "assets/images/FAQ.png",
                              textStyle: TextStyle(color: Colors.black),
                              press: () {},
                            ),
                            ProfileMenu(
                              text: "À propos de l'application",
                              icon: "assets/images/about.png",
                              press: () {},
                              textStyle: TextStyle(color: Colors.black),
                            ),
                            ProfileMenu(
                              text: "Se déconnecter",
                              icon: "assets/images/logout.png",
                              press: () {},
                              textStyle: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
    required this.textStyle,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
      ),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              color: Colors.black,
              width: 22,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: textStyle,
              ),
            ),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/logo.png"),
            radius: 50,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Image.asset("assets/images/edit.png"),
            ),
          ),
        ],
      ),
    );
  }
}
