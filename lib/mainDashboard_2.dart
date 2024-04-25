import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mrt_dashboard/alarm/alarmCard.dart';
import 'package:mrt_dashboard/maps/mapsCard.dart';
import 'package:mrt_dashboard/overview/overviewPage.dart';

class mainDashboard_2 extends StatefulWidget {
  const mainDashboard_2({super.key});

  @override
  State<mainDashboard_2> createState() => _mainDashboard_2State();
}

class _mainDashboard_2State extends State<mainDashboard_2> {
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
                    Row(
                      children: [
                        Column(
                          children: [
                            alarmCard(
                              alarmStatus: 'Critical',
                              stationName: 'H Nawi',
                            ),
                            Container(
                              height: 55,
                              width: 50,
                              color: trackColor,
                            ),
                            alarmCard(
                              alarmStatus: 'Major',
                              stationName: 'Cipete Raya',
                            ),
                            Container(
                              height: 55,
                              width: 50,
                              color: trackColor,
                            ),
                            alarmCard(
                              alarmStatus: 'Critical',
                              stationName: 'Fatmawati',
                            ),
                            Container(
                              height: 55,
                              width: 50,
                              color: trackColor,
                            ),
                            alarmCard(
                              alarmStatus: 'Normal',
                              stationName: 'Lebak Bulus',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 50,
                                  color: trackColor,
                                ),
                                alarmCard(
                                  alarmStatus: 'Normal',
                                  stationName: 'Blok A',
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 50,
                                  color: trackColor,
                                ),
                                alarmCard(
                                  alarmStatus: 'Normal',
                                  stationName: 'Blok M',
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 50,
                                  color: trackColor,
                                ),
                                alarmCard(
                                  alarmStatus: 'Normal',
                                  stationName: 'Sisingamangaraja',
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 50,
                                  color: trackColor,
                                ),
                                alarmCard(
                                  alarmStatus: 'Normal',
                                  stationName: 'Senayan',
                                ),
                                Container(
                                  height: 55,
                                  width: 50,
                                  color: trackColor,
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                SizedBox(width: 50),
                                alarmCard(
                                  alarmStatus: 'Normal',
                                  stationName: 'Bundaran HI',
                                ),
                                Container(
                                  height: 55,
                                  width: 50,
                                  color: trackColor,
                                ),
                              ],
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                        Column(
                          children: [
                            alarmCard(
                              alarmStatus: 'Critical',
                              stationName: 'Istora',
                            ),
                            Container(
                              height: 55,
                              width: 50,
                              color: trackColor,
                            ),
                            alarmCard(
                              alarmStatus: 'Normal',
                              stationName: 'Bendungan Hilir',
                            ),
                            Container(
                              height: 55,
                              width: 50,
                              color: trackColor,
                            ),
                            alarmCard(
                              alarmStatus: 'Minor',
                              stationName: 'Setia Budi',
                            ),
                            Container(
                              height: 55,
                              width: 50,
                              color: trackColor,
                            ),
                            alarmCard(
                              alarmStatus: 'Normal',
                              stationName: 'Dukuh Atas',
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                        top: 135, left: 250, right: 250, child: mapsCard()),
                  ],
                )),
          ),
          Spacer(),
          overViewPage()
        ],
      ),
    );
  }
}
