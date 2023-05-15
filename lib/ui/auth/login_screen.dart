import 'package:firebase_app/widgets/round_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailControllor = TextEditingController();
  final passwordControllor = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailControllor.dispose();
    passwordControllor.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailControllor,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      suffixIcon: Icon(Icons.email_outlined),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        print("--------");
                        return 'Enter an email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passwordControllor,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            RoundButton(
              title: "Login",
              onTap: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
