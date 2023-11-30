import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.deepOrange,
                ),
                child: MaterialButton(onPressed: (){},
                  child: Text(
                    'الاِسعافات الأولية',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.deepOrange,
                ),
                child: MaterialButton(onPressed: (){},
                  child: Text(
                    'سجل الأرقام',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.deepOrange,
                ),
                child: MaterialButton(onPressed: (){},
                  child: Text(
                    'أمراض شائعة',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.deepOrange,
                ),
                child: MaterialButton(onPressed: ()
                {
                  FirebaseAuth.instance.signOut();
                },
                  child: Text(
                    'تسجيل الخروج ',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
