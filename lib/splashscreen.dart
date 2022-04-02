import 'package:flutter/material.dart';
import 'package:noesan/login.dart';
import 'package:noesan/data/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.yellow,
              theme.hijau,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 10,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/peta indonesia.png',
                  color: Colors.black38,
                ),
                Text(
                  'Noesan',
                  style: TextStyle(
                    fontSize: 68,
                    fontFamily: 'Batik',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 250,
            )
          ],
        ),
      ),
    );
  }
}
