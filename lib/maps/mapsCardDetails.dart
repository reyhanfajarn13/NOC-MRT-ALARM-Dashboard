import 'package:flutter/material.dart';

class mapsZoomed extends StatelessWidget {
  const mapsZoomed({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.9,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              image: AssetImage('lib/assets/jakarta_maps.png'),
              fit: BoxFit.cover,
              opacity: 1)),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(
                  bottom: 25,
                  left: 200,
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Lebak Bulus'),
                      )
                    ],
                  )),
              Positioned(
                  bottom: 0,
                  left: 275,
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Fatmawati'),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 60,
                  left: 320,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Cipete Raya'),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 130,
                  left: 326,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('H Nawi'),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 180,
                  left: 332,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Blok A'),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 240,
                  left: 340,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Blok M'),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 298,
                  left: 230,
                  child: Row(
                    children: [
                      Container(
                        child: Text('Sisingamangaraja'),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                    ],
                  )),
              Positioned(
                  top: 160,
                  left: 395,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Senayan'),
                      ),
                    ],
                  )),
              Positioned(
                  top: 130,
                  left: 402,
                  child: Row(
                    children: [
                      Container(
                        child: Text('Istora'),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                    ],
                  )),
              Positioned(
                  top: 100,
                  left: 395,
                  child: Row(
                    children: [
                      Container(
                        child: Text('Bendungan Hilir'),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                    ],
                  )),
              Positioned(
                  top: 90,
                  left: 545,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Setiabudi'),
                      ),
                    ],
                  )),
              Positioned(
                  top: 40,
                  left: 565,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Dukuh Atas'),
                      ),
                    ],
                  )),
              Positioned(
                  top: 0,
                  left: 580,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                      Container(
                        child: Text('Bundaran HI'),
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
