import 'package:clora/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class doctor_location extends StatefulWidget {
  const doctor_location({super.key});

  @override
  State<doctor_location> createState() => _doctor_locationState();
}

class _doctor_locationState extends State<doctor_location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 450,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 212, 211, 211), blurRadius: 4)
                ]),
            child: Center(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('lib/assets/Online-Doctor-rafiki.png'),
                    height: 200,
                  ),
                  Text(
                    'Allow Location?',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                        'We need your permission to gain access to your location',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.grey))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(routeManager.appointmentScreenOne);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      child: Center(
                          child: Text('Allow Location',
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
                                blurRadius: 3)
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Do Not Allow',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
