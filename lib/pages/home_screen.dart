import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/pages/info_page.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  // ----- variables
  var rowlist = [
    'All',
    'Destination',
    'Cities',
    'Experiences',
  ];
  var rowimage = [
    'assets/sufi.jpg',
    'assets/b2.jpg',
    'assets/a1.jpg',
  ];
  var location = [
    'Pakistan',
    'Greenland',
    'Indonesia',
  ];
  var title = [
    'SINDH The land of Culture',
    'Muantains of Greenland',
    'Beaches of Indonesia',
  ];
  var bottomrow = [
    'assets/c.jpg',
    'assets/bo2.jpg',
    'assets/bo3.jpg',
  ];

  var bottomtext = [
    '@Rani Kot Khairpur',
    'What to do in this Auntum',
    'Have you Seen Sunset',
  ];

  var likes = [
    ' 734',
    ' 832',
    ' 1540',
  ];

// ----- variables
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 25,
            right: 25,
            left: 25,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.sort_sharp),
                    Icon(
                      Icons.circle_notifications_sharp,
                      size: 30,
                    )
                  ],
                ),
                Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 234, 234),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_sharp,
                          color: Color.fromARGB(255, 184, 183, 184),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Find your best destinations",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 184, 183, 184),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < rowlist.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            rowlist[i],
                            style: GoogleFonts.roboto(fontSize: 20),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InfoPage(),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            height: 270,
                            width: 180,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(rowimage[i]),
                                fit: BoxFit.cover,
                                opacity: 0.7,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Destination",
                                    style: GoogleFonts.robotoSerif(
                                      fontSize: 18,
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    title[i],
                                    style: GoogleFonts.robotoSerif(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        location[i],
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Articles",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
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
                          height: 190,
                          width: 180,
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
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  bottomtext[i],
                                  style: GoogleFonts.robotoSerif(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.redAccent,
                                          ),
                                          Text(
                                            likes[i],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.padding_rounded,
                                      color: Colors.white,
                                    )
                                  ],
                                )
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
        ),
      ),
    );
  }
}
