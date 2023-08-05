import 'package:flutter/material.dart';

import '../widgets/container_home.dart';

// ignore: must_be_immutable
class InfoPage extends StatelessWidget {
  var bottomrow = [
    'assets/c1.jpg',
    'assets/c2.jpg',
    'assets/c3.jpg',
  ];
// list of required text
  var bottomtext = [
    'Culture',
    'Comunity ',
    'Architecture',
  ];

  var likes = [
    '734',
    '832',
    '1540',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/sufi.jpg"), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent.withOpacity(0.2),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              right: 25,
              left: 25,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sindh",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Pakistan",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.circle,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ContainerHome(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white38.withOpacity(0.2),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Activities",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                                color: Colors.red,
                              ),
                              child: Text(
                                "View all",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int i = 0; i < 3; i++)
                              Container(
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                height: 110,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(bottomrow[i]),
                                    fit: BoxFit.cover,
                                    opacity: 0.7,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        bottomtext[i],
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red.shade600,
                  ),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
