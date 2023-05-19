import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class medicalrecord extends StatefulWidget {
  const medicalrecord({super.key});

  @override
  State<medicalrecord> createState() => _medicalrecordState();
}

class _medicalrecordState extends State<medicalrecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.arrow_back,color: Colors.black,),
            const SizedBox(width: 10,),
            Text('Medical Record',style: GoogleFonts.inter(textStyle: TextStyle(color:Colors.black,  fontSize: 19,fontWeight: FontWeight.bold)))
          ],
        ),

      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('lib/assets/no-medical-record.png')),
              const SizedBox(height: 35,),
              Text('You dont have any medical record!', style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 104, 103, 103),
                                        fontSize: 18))),
              const SizedBox(height: 50,),
                 Container(
                        width: double.infinity,
                        height: 60,
                        child: Center(
                            child: Text('Add Record',
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
      ),
    );
  }
}