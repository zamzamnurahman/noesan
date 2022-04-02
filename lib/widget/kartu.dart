import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kartu extends StatelessWidget {
  String? kabupaten;
  String? tempat;
  String? gambar;

  Kartu({
    this.kabupaten,
    this.tempat,
    this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 250,
          width: 200,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                '$gambar',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black38,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.3, 1],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$kabupaten',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      '$tempat',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
