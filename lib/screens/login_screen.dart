


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenstate();
}

class _LoginScreenstate extends State<LoginScreen>
{
  final _emailControlar = TextEditingController();
  final _passwordControlar = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailControlar.text.trim(),
        password: _passwordControlar.text.trim(),
    );
  }

  @override
  void dispos(){
    super.dispose();
    _emailControlar.dispose();
    _passwordControlar.dispose();
  }

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'تسجيل الدخول',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'اهلاً بكم في تطبيق الإسعافات الأولية',
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextField(
                    controller: _emailControlar,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Uesr Name',
                    ),
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextField(
                    controller: _passwordControlar,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Password',
                    ),
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
              ),
              child: Container(
                padding: EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: GestureDetector(
                  onTap: signIn,
                  child: Center(
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '! سجل الآن ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'اذا لم تكن مسجل بالتطبيق ',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

