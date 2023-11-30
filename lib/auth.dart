import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_aid_android/screens/home_screen.dart';
import 'package:first_aid_android/screens/login_screen.dart';
import 'package:flutter/material.dart';
class Auth extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context , snapshot){
          if
          (snapshot.hasData){
            return HomeScreen();
          }
          else {
            return LoginScreen();
          }
        }),
      ),
    );
  }
}
