import 'dart:developer';
import 'dart:js_util';

import 'package:clora/api_response.dart';
import 'package:clora/routes/routes.dart';
import 'package:clora/services/get_each_user.dart';
import 'package:clora/services/services.dart';
import 'package:clora/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_jap_icons/medical_icons_icons.dart';

class mainhomescreenone extends StatefulWidget {
  const mainhomescreenone({super.key});

  @override
  State<mainhomescreenone> createState() => _mainhomescreenoneState();
}

class _mainhomescreenoneState extends State<mainhomescreenone> {
  @override
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;

  List Doctor = [
    [
      'Dr Thomas Tyler',
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
      'Dental Surgeon',
      'Leicester,  United Kingdom',
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star_border_outlined,
        size: 18,
        color: Colors.yellow,
      ),
    ],
    [
      'Dr james Panes',
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
      'Neurologist',
      'Leicester,  United Kingdom',
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star_border_outlined,
        size: 18,
        color: Colors.yellow,
      ),
    ],
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.year} : ${dateTime.month} : ${dateTime.day}';
  }

  String formatTime(DateTime dateTime) {
    return '${dateTime.hour} : ${dateTime.minute}';
  }

  UserService get service => GetIt.I<UserService>();

  APIresponse<List<Users>>? _apiResponse;
  bool isLoading = false;
  late Future<Mi> user;
  @override
  void initState() {
    user = getMi();
    _fetchNote();
    super.initState();
  }

  _fetchNote() async {
    setState(() {
      isLoading = true;
    });
    _apiResponse = await service.getUsers();
    setState(() {
      isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    double screenWeigth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Jane,',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                          ),
                          Text('How are you doing today?'),
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0,
                                color: Color.fromARGB(255, 234, 232, 232)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey,
                        )),
                      ),
                      Positioned(
                          left: 20,
                          top: -2,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 4, 138, 247)),
                            child: Center(
                                child: Text(
                              '1',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: Colors.white)),
                            )),
                            width: 20,
                            height: 20,
                          ))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FutureBuilder<Mi>(
                future: user,
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.fromLTRB(15, 30, 15, 10),
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image:
                                      AssetImage('lib/assets/Rectangle-12.png'),
                                  fit: BoxFit.cover)),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'NEXT APPOINTMENT',
                                      style: GoogleFonts.inter(
                                          textStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Text(
                                        '3 days left',
                                        style: GoogleFonts.inter(
                                            textStyle:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'lib/assets/Ellipse-17.png')),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data!.userName,
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        Text('Physiotherapist',
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                    color: Colors.white)))
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ' ${formatDateTime(snapshot.data!.dateCreated)} ',
                                      style: GoogleFonts.inter(
                                          textStyle:
                                              TextStyle(color: Colors.white)),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.lock_clock,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '${formatDateTime(snapshot.data!.dateEdited)}',
                                          style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                  color: Colors.white)),
                                        )
                                      ],
                                    ),
                                    Text(
                                      snapshot.data!.status,
                                      style: GoogleFonts.inter(
                                          textStyle:
                                              TextStyle(color: Colors.white)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
             } else {
                  return CircularProgressIndicator(
                     color: Colors.grey,
                   );
                 }
                })),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Services',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(routeManager.doctorCategories);
                            },
                            child: Container(
                              height: 120,
                              padding: EdgeInsets.all(17.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        color:
                                            Color.fromARGB(255, 189, 189, 189))
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    MedicalIcons.i_nursery,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  Text(
                                    'Request a doctor',
                                    style: GoogleFonts.inter(
                                        textStyle:
                                            TextStyle(color: Colors.black)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(17),
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Color.fromARGB(255, 189, 189, 189))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  MedicalIcons.ambulance,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                Text('Appointments',
                                    style: GoogleFonts.inter(
                                        textStyle:
                                            TextStyle(color: Colors.black)))
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 120,
                            padding: EdgeInsets.all(17.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Color.fromARGB(255, 189, 189, 189))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  MedicalIcons.medical_records,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                Text('Medical Record',
                                    style: GoogleFonts.inter(
                                        textStyle:
                                            TextStyle(color: Colors.black)))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctors Near You',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                  )
                ],
              ),
            ),
            Container(
              height: 355,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Doctor.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      padding: EdgeInsets.all(0.0),
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            child: Image(
                              image: NetworkImage('${Doctor[index][1]}'),
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 200,
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                          ),
                          Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: Color.fromARGB(255, 186, 186, 186))
                                ],
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${Doctor[index][0]}',
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${Doctor[index][2]}',
                                    style: GoogleFonts.inter(),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color:
                                            Color.fromARGB(255, 102, 101, 101),
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${Doctor[index][3]}',
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 143, 142, 142),
                                                fontSize: 14)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Doctor[index][4],
                                      Doctor[index][5],
                                      Doctor[index][6],
                                      Doctor[index][7],
                                      Doctor[index][8],
                                    ],
                                  ))
                                ],
                              ))
                        ],
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
