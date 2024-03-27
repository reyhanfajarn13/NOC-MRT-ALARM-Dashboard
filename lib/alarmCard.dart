import 'package:flutter/material.dart';
import 'package:mrt_dashboard/alarmCardDetails.dart';

class alarmCard extends StatefulWidget {
  final String stationName;
  final String alarmStatus;
  const alarmCard(
      {super.key, required this.stationName, required this.alarmStatus});

  @override
  State<alarmCard> createState() => _alarmCardState();
}

class _alarmCardState extends State<alarmCard> {
  bool _isZoom = false;
  @override
  Widget build(BuildContext context) {
    Color boxColor;

    if (widget.alarmStatus == 'Critical') {
      boxColor = Colors.red.shade900;
    } else if (widget.alarmStatus == 'Major') {
      boxColor = Colors.deepOrange;
    } else if (widget.alarmStatus == 'Minor') {
      boxColor = Colors.orange.shade600;
    } else {
      // Warna default jika nilai stationName tidak sesuai
      boxColor = Color(0xff1814F3);
    }
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
                backgroundColor: boxColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: alarmCardDetails(
                    stationName: widget.stationName,
                    alarmStatus: widget.alarmStatus)
                // title: Text('Info'),
                // content: Text(
                //     'Alarm Status: ${widget.alarmStatus}\nStation Name: ${widget.stationName}'),
                // actions: <Widget>[
                //   TextButton(
                //     onPressed: () {
                //       Navigator.of(context).pop();
                //     },
                //     child: Text('Close'),
                //   ),
                // ],
                );
          },
        );
      },
      child: AnimatedContainer(
        height: _isZoom ? size.height * 0.5 : size.height * 0.13,
        width: _isZoom ? size.width * 0.5 : size.width * 0.08,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(10),
        ),
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  widget.alarmStatus,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset('lib/assets/mrt_logo.png'),
                ),
                SizedBox(width: 5),
              ],
            ),
            Spacer(),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              height: 25,
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Center(
                child: Text(
                  widget.stationName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
