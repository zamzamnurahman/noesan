import 'package:flutter/material.dart';
import 'package:noesan/data/data.dart';
import 'package:noesan/data/theme.dart';
import 'package:noesan/login.dart';
import 'package:noesan/tentang.dart';
import 'package:noesan/widget/kartu.dart';

class Home extends StatelessWidget {
  String nama;
  String email;

  Home({
    required this.nama,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Colors.black54,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              child: Icon(
                Icons.person,
                size: 70,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('$nama',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text(
              '$email',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Home',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tentang(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Tentang',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                child: Text('Keluar',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Text('@Nuansa Production 2022',
                style: TextStyle(fontSize: 12, color: Colors.white)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                theme.ungu,
                theme.hijau,
                theme.yellow,
              ],
              stops: [0.1, 0.7, 1],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Halo,',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  '$nama',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text('Selamat Datang di Indonesia',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.white),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, bottom: 10),
                      child: Text(
                        'Jawa Barat',
                        style: TextStyle(
                            fontFamily: 'Batik',
                            fontSize: 28,
                            color: Colors.white),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Kartu(
                            gambar: 'assets/images/image 1.png',
                            kabupaten: 'Bandung',
                            tempat: 'Cicalengka Dreamland',
                          ),
                          Kartu(
                            gambar: 'assets/images/image 2.png',
                            kabupaten: 'Garut',
                            tempat: 'saung Ciburial,Samarang',
                          ),
                          Kartu(
                            gambar: 'assets/images/image 3.png',
                            kabupaten: 'Cianjur',
                            tempat: 'Kebun Raya Ciboday Sindang Jaya',
                          ),
                          Kartu(
                            gambar: 'assets/images/image 4.png',
                            kabupaten: 'Cianjur',
                            tempat: 'Kebun Raya Ciboday Sindang Jaya',
                          ),
                          SizedBox(
                            width: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.white),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, bottom: 10),
                      child: Text(
                        'Jakarta',
                        style: TextStyle(
                            fontFamily: 'Batik',
                            fontSize: 28,
                            color: Colors.white),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Kartu(
                            gambar: 'assets/images/image 5.png',
                            kabupaten: 'Jakarta Utara',
                            tempat: 'Pantai Indah Kapuk',
                          ),
                          Kartu(
                            gambar: 'assets/images/image 6.png',
                            kabupaten: 'Jakarta Barat',
                            tempat: 'Kota Tua, Tamansari',
                          ),
                          Kartu(
                            gambar: 'assets/images/image 7.png',
                            kabupaten: 'jakarta Pusat',
                            tempat: 'Monas, Medan Merdeka',
                          ),
                          SizedBox(
                            width: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.white),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, bottom: 10),
                      child: Text(
                        'Bali',
                        style: TextStyle(
                            fontFamily: 'Batik',
                            fontSize: 30,
                            color: Colors.white,
                            letterSpacing: 2),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Kartu(
                            gambar: 'assets/images/image 8.png',
                            kabupaten: 'Karang Asem',
                            tempat: 'Pantai Jasri',
                          ),
                          Kartu(
                            gambar: 'assets/images/image 9.png',
                            kabupaten: 'Sukasada',
                            tempat: 'Air Terjun Alang-alang',
                          ),
                          Kartu(
                            gambar: 'assets/images/image 10.png',
                            kabupaten: 'Karang Asem',
                            tempat: 'Candi Lempuyangan',
                          ),
                          SizedBox(
                            width: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
