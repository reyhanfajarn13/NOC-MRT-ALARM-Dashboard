import 'package:flutter/material.dart';
import 'package:mrt_dashboard/overview/overViewPageCard.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class overViewPage extends StatefulWidget {
  const overViewPage({super.key});

  @override
  State<overViewPage> createState() => _overViewPageState();
}

class _overViewPageState extends State<overViewPage> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: size.width * 0.2,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible; // Toggle visibilitas Container
              });
            },
            child: Text(_isVisible ? 'Sembunyikan' : 'Tampilkan'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Warna bayangan
              spreadRadius: 3, // Radius penyebaran bayangan
              blurRadius: 5, // Radius blur bayangan
              offset: Offset(0, 3), // Perpindahan bayangan (x, y)
            ),
          ]),
          child: Visibility(
            visible: _isVisible, // Menetapkan visibilitas Container
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: size.height * 0.815,
              width: size.width * 0.3,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        width: size.width * 0.15,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                            color: Color(0xff343C6A),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'lib/assets/mrt_logo.png',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Status Overview',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: size.width * 0.1,
                        height: size.height * 0.075,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: DigitalClock(
                          hourMinuteDigitTextStyle: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                          secondDigitTextStyle: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white),
                          colon: Text(
                            ":",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  overviewPageCard(
                    header: 'Top Apps',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  overviewPageCard(
                    header: 'Tes',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  overviewPageCard(
                    header: 'Tes',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        width: size.width * 0.085,
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.red.shade900,
                          borderRadius: BorderRadius.circular(
                              10), // Mengatur sudut bulat dengan radius 10
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                  width: size.width * 0.1,
                                  height: size.height * 0.03,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text('Critical',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)))),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  '200k',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: size.width * 0.085,
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(
                              10), // Mengatur sudut bulat dengan radius 10
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                  width: size.width * 0.1,
                                  height: size.height * 0.03,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text('Major',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)))),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  '200k',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: size.width * 0.085,
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade600,
                          borderRadius: BorderRadius.circular(
                              10), // Mengatur sudut bulat dengan radius 10
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                  width: size.width * 0.1,
                                  height: size.height * 0.03,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    'Minor',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ))),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  '200k',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
