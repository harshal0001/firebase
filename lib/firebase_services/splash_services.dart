import 'dart:async';

import 'package:firebase_app/ui/auth/login_screen.dart';
import 'package:flutter/material.dart';

class SplashService {
  void isLogin(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return LoginScreen();
          },
        ),
      ),
    );
  }
}
