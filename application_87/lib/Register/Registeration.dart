import 'package:application_87/homePage/HomePage.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

/*

  final _formKey = GlobalKey<FormState>(); // مفتاح النموذج للتحقق
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" LOG IN ",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[800])),
            const SizedBox(
              height: 100,
            ),

            textfildd("User name"),
            const SizedBox(height: 10),
            const SizedBox(
              height: 30,
            ),
            textfildd("Password"),
            const SizedBox(height: 30),
            evaluatedB("Log in", () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            }),

            // زر التسجيل

            const SizedBox(height: 16),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUP()),
                );
              },
              child: Text("Dont have an account ?! SignUP",
                  style: TextStyle(color: Colors.brown[800])),
            ),
          ],
        ),
      ),
    );
  }
}

//   // وظيفة محاكاة التسجيل (ربط مع Firebase أو قاعدة بيانات أخرى)
//   void _registerUser(String email, String password) {
//     // استبدل هذا الكود بالمنطق الخاص بقاعدة البيانات
//     print('User Registered: Email: $email, Password: $password');
//   }
// }

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 30),
              Text(" SIGN UP ",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[800])),
              const SizedBox(
                height: 60,
              ),
              textfildd("Full Name"),
              const SizedBox(
                height: 10,
              ),
              textfildd("Email or Phone"),
              const SizedBox(
                height: 10,
              ),
              textfildd("Age"),
              const SizedBox(
                height: 10,
              ),
              textfildd("Gender"),
              const SizedBox(
                height: 10,
              ),
              textfildd("Password"),
              const SizedBox(
                height: 10,
              ),
              textfildd("Confirm Password"),
              const SizedBox(
                height: 15,
              ),
              evaluatedB("Sign Up", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ));
              })
            ]),
          ),
        ],
      ),
    );
  }
}

Widget textfildd(
  String labletext,
) {
  return TextFormField(
    cursorColor: Colors.brown[800],
    //      controller: emailController,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.brown)),
      labelText: labletext,
      labelStyle: TextStyle(
          color: Colors.brown[800], fontWeight: FontWeight.w500, fontSize: 15),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    ),
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your email';
      }
      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
        return 'Please enter a valid email';
      }
      return null;
    },
  );
}

Widget evaluatedB(String lable, VoidCallback onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    //            if (_formKey.currentState!.validate()) {
    //            _registerUser(emailController.text, passwordController.text);
    //        }

    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.brown[800],
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    ),
    child: Text(lable),
  );
}
