import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clora/routes/routes.dart';

class splash_screen_four extends StatefulWidget {
  const splash_screen_four({super.key});

  @override
  State<splash_screen_four> createState() => _splash_screen_fourState();
}

class _splash_screen_fourState extends State<splash_screen_four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const    BoxDecoration(
          color: Colors.white,
         
        ),
        child:
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
               Image(image: AssetImage('lib/assets/All-the-data-rafiki.png'),height: 280,),
                const SizedBox(height: 80,),
             
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Text('Create and Store your Medical Records',   style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)) ,),
                ),
                 const SizedBox(height: 70,),
                GestureDetector(
                    onTap: (() {
                Navigator.of(context).pushNamed(routeManager.splashScreenFive);
              }),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.arrow_forward_sharp,color: Colors.white, size: 25,),
                  ),
                )
            ],
          ),
       
      ),
    );
    
  }
}