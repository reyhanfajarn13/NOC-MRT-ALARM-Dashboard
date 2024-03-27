import 'package:flutter/material.dart';

class overviewPageCard extends StatefulWidget {
  const overviewPageCard({super.key});

  @override
  State<overviewPageCard> createState() => _overviewPageCardState();
}

class _overviewPageCardState extends State<overviewPageCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                  backgroundColor: Color(0xff343C6A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Container(
                    height: size.height * 0.8,
                    width: size.width * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                    ),
                  ));
            });
      },
      child: Container(
        width: size.width * 0.285,
        height: size.height * 0.15,
        decoration: BoxDecoration(
          color: Color(0xff343C6A),
          borderRadius: BorderRadius.circular(
              10), // Mengatur sudut bulat dengan radius 10
        ),
        child: Text('Saya'),
      ),
    );
  }
}
