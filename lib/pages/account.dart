import 'package:posyandu_cipayung/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: MaterialButton(
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
        color: greenColor,
        child: Text('SignOut'),
      )),
    );
  }
}
