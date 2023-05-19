import 'package:clora/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_screen_two extends StatefulWidget {
  const splash_screen_two({super.key});

  @override
  State<splash_screen_two> createState() => _splash_screen_twoState();
}

class _splash_screen_twoState extends State<splash_screen_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('lib/assets/world.png'),
              height: 140,
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Welcome!',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 23)),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Text(
                'Clora helps you to connect to medical professionals from the comfort of where you are',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.black, fontSize: 13)),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).pushNamed(routeManager.spalshScreenThree);
              }),
              child: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
