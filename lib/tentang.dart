import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {
  const Tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const[
          Text(
            'Noesan',
            style: TextStyle(fontSize: 40, fontFamily: 'Batik'),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Aplikasi menjelajahi Indoneisa melihat keindahan indonesia secara langsung denga fitur-fitur yang menarik dan canggih mempersembahkan aplikasi Noesan yang hadir untuk menemani anda liburan Indonesia tanpa khawatir untuk tidak terlewatkan keindahan indonesia semenjak anda liburan ke sini. dan ada fitur bantu bahasa daerah juga untuk mempermudah anda dalam interkasi di daerah budaya indonesia.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    ));
  }
}
