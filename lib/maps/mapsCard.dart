import 'package:flutter/material.dart';
import 'package:mrt_dashboard/maps/mapsCardDetails.dart';

class mapsCard extends StatelessWidget {
  const mapsCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: mapsZoomed(size: size));
          },
        );
      },
      child: Container(
        height: size.height * 0.4,
        width: size.width * 0.1,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5), // Warna bayangan
                spreadRadius: 3, // Radius penyebaran bayangan
                blurRadius: 5, // Radius blur bayangan
                offset: Offset(0, 3), // Perpindahan bayangan (x, y)
              ),
            ],
            image: DecorationImage(
                image: AssetImage('lib/assets/jakarta_maps.png'),
                fit: BoxFit.cover,
                opacity: 1)),
        child: Stack(
          children: [
            Positioned(
                bottom: 12,
                left: 20,
                child: Column(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Lebak Bulus',
                        style: TextStyle(fontSize: 7),
                      ),
                    )
                  ],
                )),
            Positioned(
                bottom: 2,
                left: 56,
                child: Column(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Fatmawati',
                        style: TextStyle(fontSize: 7),
                      ),
                    )
                  ],
                )),
            Positioned(
                bottom: 30,
                left: 78,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Cipete Raya',
                        style: TextStyle(fontSize: 7),
                      ),
                    )
                  ],
                )),
            Positioned(
                bottom: 56,
                left: 81,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'H Nawi',
                        style: TextStyle(fontSize: 7),
                      ),
                    )
                  ],
                )),
            Positioned(
                bottom: 83,
                left: 85,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Blok A',
                        style: TextStyle(fontSize: 7),
                      ),
                    )
                  ],
                )),
            Positioned(
                bottom: 110,
                left: 87,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Blok M',
                        style: TextStyle(fontSize: 7),
                      ),
                    )
                  ],
                )),
            Positioned(
                bottom: 133,
                left: 30,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Sisingamangaraja',
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                  ],
                )),
            Positioned(
                bottom: 148,
                left: 110,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Senayan',
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
                  ],
                )),
            Positioned(
                bottom: 161,
                left: 115,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Istora',
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                  ],
                )),
            Positioned(
                top: 50,
                left: 100,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Bendungan Hilir',
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                  ],
                )),
            Positioned(
                top: 43,
                left: 178,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Setiabudi',
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: 19,
                left: 188,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Dukuh Atas',
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: 0,
                left: 195,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                    ),
                    Container(
                      child: Text(
                        'Bundaran HI',
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
