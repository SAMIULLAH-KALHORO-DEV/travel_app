import 'package:flutter/material.dart';
import 'package:travel_app/pages/home_screen.dart';

class BtmBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: Container(
            alignment: Alignment.topCenter,
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 242, 128, 126),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "Get Started!",
                style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
