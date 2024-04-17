import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mrt_dashboard/alarm/alarmCard.dart';
import 'package:mrt_dashboard/maps/mapsCard.dart';
import 'package:mrt_dashboard/overview/overviewPage.dart';

class mainDashboard extends StatefulWidget {
  const mainDashboard({super.key});

  @override
  State<mainDashboard> createState() => _mainDashboardState();
}

class _mainDashboardState extends State<mainDashboard> {
  @override
  Widget build(BuildContext context) {
    Color trackColor = Colors.brown.shade700;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 15.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        shadowColor: Colors.black,
        title: Text(
          'MRT Smart Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/Jakarta_districts.png'),
                    fit: BoxFit.cover,
                    opacity: 0.5)),
            height: size.height * 1,
            width: size.width * 0.7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  // Positioned(
                  //     left: 200,
                  //     top: 50,
                  //     child: Container(
                  //         height: size.height * 0.7,
                  //         width: size.width * 0.5,
                  //         child: Image.asset(
                  //           'lib/assets/route_3.png',
                  //         ))),
                  //TRACK DESIGN
                  Positioned(
                      bottom: 120,
                      left: 55,
                      child: Container(
                        height: 50,
                        width: 50,
                        color: trackColor,
                      )),
                  Positioned(
                      bottom: 240,
                      left: 55,
                      child: Container(
                        height: 55,
                        width: 50,
                        color: trackColor,
                      )),
                  Positioned(
                      top: 100,
                      left: 55,
                      child: Container(
                        height: 55,
                        width: 50,
                        color: trackColor,
                      )),
                  // upper
                  Positioned(
                      top: 45,
                      left: 130,
                      child: Container(
                        height: 45,
                        width: 55,
                        color: trackColor,
                      )),
                  Positioned(
                      top: 45,
                      left: 280,
                      child: Container(
                        height: 45,
                        width: 55,
                        color: trackColor,
                      )),
                  Positioned(
                      top: 45,
                      left: 400,
                      child: Container(
                        height: 45,
                        width: 55,
                        color: trackColor,
                      )),
                  Positioned(
                      top: 45,
                      right: 280,
                      child: Container(
                        height: 45,
                        width: 55,
                        color: trackColor,
                      )),
                  Positioned(
                      top: 45,
                      right: 150,
                      child: Container(
                        height: 45,
                        width: 55,
                        color: trackColor,
                      )),
                  //right
                  Positioned(
                      top: 100,
                      right: 75,
                      child: Container(
                        height: 55,
                        width: 50,
                        color: trackColor,
                      )),
                  Positioned(
                      top: 225,
                      right: 75,
                      child: Container(
                        height: 55,
                        width: 50,
                        color: trackColor,
                      )),
                  Positioned(
                      bottom: 120,
                      right: 75,
                      child: Container(
                        height: 55,
                        width: 50,
                        color: trackColor,
                      )),
                  Positioned(
                      bottom: 60,
                      right: 150,
                      child: Container(
                        height: 45,
                        width: 55,
                        color: trackColor,
                      )),

                  //CARD ALARM
                  Positioned(
                      left: 180,
                      top: 30,
                      child: alarmCard(
                        stationName: 'Blok A',
                        alarmStatus: 'Critical',
                      )),
                  Positioned(
                      left: 30,
                      top: 30,
                      child: alarmCard(
                          stationName: 'H Nawi', alarmStatus: 'Normal')),
                  Positioned(
                      left: 30,
                      top: 150,
                      child: alarmCard(
                          stationName: 'Cipete Raya', alarmStatus: 'Major')),
                  Positioned(
                      left: 30,
                      top: 280,
                      child: alarmCard(
                          stationName: 'Fatmawati', alarmStatus: 'Normal')),
                  Positioned(
                      left: 30,
                      top: 400,
                      child: alarmCard(
                          stationName: 'Lebak Bulus', alarmStatus: 'Normal')),
                  Positioned(
                      right: 50,
                      top: 30,
                      child: alarmCard(
                          stationName: 'Istora', alarmStatus: 'Critical')),
                  Positioned(
                      right: 50,
                      top: 150,
                      child: alarmCard(
                          stationName: 'Bendungan Hilir',
                          alarmStatus: 'Normal')),
                  Positioned(
                      right: 50,
                      top: 280,
                      child: alarmCard(
                          stationName: 'Setiabudi', alarmStatus: 'Normal')),
                  Positioned(
                      right: 50,
                      top: 400,
                      child: alarmCard(
                          stationName: 'Dukuh Atas', alarmStatus: 'Minor')),
                  Positioned(
                      right: 200,
                      top: 400,
                      child: alarmCard(
                          stationName: 'Bundaran HI', alarmStatus: 'Normal')),
                  Positioned(
                      left: 320,
                      top: 30,
                      child: alarmCard(
                          stationName: 'Blok M', alarmStatus: 'Normal')),
                  Positioned(
                      left: 450,
                      top: 30,
                      child: alarmCard(
                          stationName: 'Sisingamangaraja',
                          alarmStatus: 'Critical')),
                  Positioned(
                      left: 590,
                      top: 30,
                      child: alarmCard(
                          stationName: 'Senayan', alarmStatus: 'Normal')),
                  Positioned(
                      top: 135, left: 250, right: 250, child: mapsCard()),

                  //Track design
                ],
              ),
            ),
          ),
          Spacer(),
          overViewPage()
        ],
      ),
    );
  }
}
