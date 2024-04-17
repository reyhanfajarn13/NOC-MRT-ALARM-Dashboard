import 'package:flutter/material.dart';

class alarmCardDetails extends StatelessWidget {
  final String stationName;
  final String alarmStatus;
  const alarmCardDetails(
      {super.key, required this.stationName, required this.alarmStatus});

  @override
  Widget build(BuildContext context) {
    Color boxColor;

    if (alarmStatus == 'Critical') {
      boxColor = Colors.red.shade900;
    } else if (alarmStatus == 'Major') {
      boxColor = Colors.deepOrange;
    } else if (alarmStatus == 'Minor') {
      boxColor = Colors.orange.shade600;
    } else {
      // Warna default jika nilai stationName tidak sesuai
      boxColor = Color(0xff1814F3);
    }
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${stationName}:${alarmStatus}',
                  style: TextStyle(
                      fontSize: 30,
                      color: boxColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: size.height * 0.05,
              width: size.width * 0.1,
              transformAlignment: AlignmentDirectional.bottomEnd,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Close',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
