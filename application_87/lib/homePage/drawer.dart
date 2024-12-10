
import 'package:application_87/Register/welcomeScreen.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class drawerr extends StatelessWidget {
  const drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 225,
        height: double.infinity,
        color: Colors.brown[800],
        child: Column(
          children: [
            const SizedBox(height: 25),
            Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "images/Coffee Supplier Presentation.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            const Center(
              child: ListTile(
                title: Text(
                  "KARMOUZ Cafe",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "الإتقان عنواننا",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Buttton("Settings", Icons.settings, () {}),
                  Divider(color: Colors.white.withOpacity(0.3), thickness: 1, indent: 15, endIndent: 15),
                  Buttton("Staff and evaluation", Icons.sentiment_very_satisfied_sharp, () {}),
                  Divider(color: Colors.white.withOpacity(0.3), thickness: 1, indent: 15, endIndent: 15),
                  Buttton("Wallet", Icons.account_balance_wallet, () {}),
                  Divider(color: Colors.white.withOpacity(0.3), thickness: 1, indent: 15, endIndent: 15),
                  Buttton("About Us", Icons.help_outline, () {}),
                  Divider(color: Colors.white.withOpacity(0.3), thickness: 1, indent: 15, endIndent: 15),
                  Buttton("Log out", Icons.logout, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget Buttton(String text, IconData icon, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton.icon(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent), // جعل اللون شفافًا
            foregroundColor: MaterialStateProperty.all(
              const Color.fromARGB(223, 255, 255, 255),
            ),
          ),
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}
