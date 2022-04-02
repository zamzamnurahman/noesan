import 'package:flutter/material.dart';
import 'package:noesan/data/theme.dart';
import 'package:noesan/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController input = TextEditingController();
  TextEditingController input2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          theme.ungu,
          theme.yellow,
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Noesan',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Batik'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: input,
              decoration: InputDecoration(
                hintText: 'Masukan Nama',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                hintStyle: const TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: theme.ungu, width: 2),
                ),
              ),
              
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: input2,
              decoration: InputDecoration(
                hintText: 'Masukan Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintStyle: const TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: theme.ungu, width: 2),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    print(input2.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(
                            nama: input.text,
                            email: input2.text,
                          ),
                        ));
                  },
                  child: const Center(
                    child: Text('Mulai'),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: theme.ungu,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
            ),
          ],
        ),
      ),
      
    );
    
  }

  @override
  void dispose() {
    input.dispose();
    input2.dispose();
    super.dispose();
  }
}
