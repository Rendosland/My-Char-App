import 'package:flutter/material.dart';
import 'package:rendosland/components/my_button.dart';
import 'package:rendosland/components/textfield.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  LoginPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.message,
                size: 60, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 50),
            //welcome backmessage
            Text(
              'welcome back , you\'ve been missed!',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),
            SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextField(
              hintText: "Email",
              obsecureText: false,
              controller: _emailController,
            ),

            SizedBox(height: 10),
            //password textfield
            MyTextField(
              hintText: "password",
              obsecureText: true,
              controller: _pwController,
            ),
            SizedBox(height: 25),
            //login button
            MyButton(
              text: "Login",
              onTap: login,
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not A member? ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary)),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],
            )
            //register buttom
          ],
        ),
      ),
    );
  }

  void login() {}
}
