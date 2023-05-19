import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:clora/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class get_started extends StatefulWidget {
  const get_started({super.key});

  @override
  State<get_started> createState() => _get_startedState();
}

class _get_startedState extends State<get_started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'lib/assets/Ellipse-48.png',
                ),
                fit: BoxFit.cover)),
        height: double.infinity,
        child: Stack(children: [
          Positioned(
              child: Center(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('lib/assets/chlora.png'),
                width: double.infinity,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 29, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15.0,
                          color: Color.fromARGB(255, 241, 240, 240))
                    ]),
                width: double.infinity,
                height: 60,
                child: GestureDetector(
                  onTap: (() {
                    print('I HAVE BEEN PRINTED');
                    Navigator.of(context)
                        .pushNamed(routeManager.mainHomeScreenOne);
                  }),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                  child: RichText(
                // Controls visual overflow
                overflow: TextOverflow.clip,

                // Controls how the text should be aligned horizontally
                textAlign: TextAlign.end,

                // Control the text direction
                textDirection: TextDirection.rtl,

                // Whether the text should break at soft line breaks
                softWrap: true,

                // Maximum number of lines for the text to span
                maxLines: 1,

                // The number of font pixels for each logical pixel
                textScaleFactor: 1,
                text: const TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Login',
                        style: TextStyle(color: Colors.blue, fontSize: 14.0)),
                  ],
                ),
              )),
            ],
          )))
        ]),
      ),
    );
  }
}
