import 'dart:async';

import 'package:clora/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_screen_one extends StatefulWidget {
  const splash_screen_one({super.key});

  @override
  State<splash_screen_one> createState() => _splash_screen_oneState();
}

class _splash_screen_oneState extends State<splash_screen_one> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).pushNamed(routeManager.slapshScreenTwo));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 3, 59, 106),
          image: DecorationImage(
              image: const NetworkImage(
                  "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk="),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 3, 59, 105).withOpacity(0.1),
                  BlendMode.dstATop)),
        ),
       
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
               Image(image: AssetImage('lib/assets/chlora.png'),height: 120,),
               Text('Clora',   style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 23)) ,)
            ],
          ),
        
      ),
    );
  }
}
