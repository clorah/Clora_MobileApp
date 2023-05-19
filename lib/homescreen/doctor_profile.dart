import 'package:clora/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class dcotor_profile extends StatefulWidget {
  const dcotor_profile({super.key});

  @override
  State<dcotor_profile> createState() => _dcotor_profileState();
}

class _dcotor_profileState extends State<dcotor_profile> {
  @override
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 376;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 375;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 15, 119, 204),
                            Color.fromARGB(255, 136, 193, 239)
                          ]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: IconButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
                
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 90, 10, 10),
                  margin: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                   
                  ),
                 
                  height: isMobile(context)
                      ? MediaQuery.of(context).size.height - 100
                      : MediaQuery.of(context).size.height - 200,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr Thomas Tyler',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('MBBS, Bsc(Medicine)',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 130, 129, 129)))),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Specialization -Surgery, Optometry, Dental-Surgery',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 130, 129, 129),
                                  fontSize: 12))),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.health_and_safety),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Medcare Health Limited',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 130, 129, 129),
                                      fontSize: 12))),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.email),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('KazeemQuayum67@gmail.com',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 130, 129, 129),
                                      fontSize: 12))),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('Leicester, United Kingdom',
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 130, 129, 129),
                                          fontSize: 12)))
                            ],
                          ),
                          ElevatedButton(
                              onPressed: (() {
                                Navigator.of(context)
                                    .pushNamed(routeManager.doctorLocation);
                              }),
                              child: Text('Get Direction')),
                        ],
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        child: Center(
                            child: Text('Book Appointment',
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 14)))),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 164, 163, 163),
                                  blurRadius: 2)
                            ]),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 210,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: const Image(
                                    image: NetworkImage(
                                        'https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk='),
                                    height: 180,
                                    width: 180,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.message,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
