import 'package:posyandu_cipayung/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../pages/register_page.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //login page
  bool showlogin = true;

  void toggleScreens() {
    setState(() {
      showlogin = !showlogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showlogin) {
      return login(showRegisterPage: toggleScreens);
    } else {
      return RegisterPage(showlogin: toggleScreens);
    }
  }
}
