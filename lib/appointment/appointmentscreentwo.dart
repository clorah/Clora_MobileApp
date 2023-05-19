import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class appointmentscreentwo extends StatefulWidget {
  const appointmentscreentwo({super.key});

  @override
  State<appointmentscreentwo> createState() => _appointmentscreentwoState();
}

class _appointmentscreentwoState extends State<appointmentscreentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(Icons.arrow_back),
                const SizedBox(
                  width: 30,
                ),
               
                    Text(
                      'Appointment Details',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                    ),
                   
                  
               
              ],
            ),
            const SizedBox(height: 20,),
              Padding(
                
              padding: const EdgeInsets.all(12.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Online Video Consultation',
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20,),
                 TextField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600)),
                    hintText: 'Jane Jessica',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey,width: 1,)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey,width: 1,)
                    )
                  ),
                 ),
                 const SizedBox(height: 20,),
                 DottedBorder(
                  dashPattern: [6.6],
                  strokeWidth: 1,
                  color: Colors.grey,
                  radius: Radius.circular(50.0),
                
                   child: Container(
                    
                   
                    height: 50,
                    width: double.infinity,
                    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.add,color: Colors.grey,),
                      const SizedBox(width: 10,),
                      Text('Add Patient',style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500)),)
                    ],)),
                   ),
                 )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text('What is your question?',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14)),),
              ),
              Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 242, 242),
                  borderRadius: BorderRadius.circular(15)
                ),
                margin: EdgeInsets.symmetric(vertical: 14,horizontal: 20),
                child: Text('Lorem ipsum dolor sit amet consectetur. Purus auctor eleifend at adipiscing vulputate mattis. Pellentesque egestas adipiscing amet posuere. Ornare id mi mattis vel amet sed pharetra sociis placerat.'),
              ),
              const SizedBox(height: 10,),
               Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                 child: DottedBorder(
                    dashPattern: [6.6],
                    strokeWidth: 1,
                    color: Colors.grey,
                    radius: Radius.circular(50.0),
                  
                     child: Container(
                      
                     
                      height: 50,
                      width: double.infinity,
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.attachment,color: Colors.grey,),
                        const SizedBox(width: 10,),
                        Text('Add Attachments',style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500)),)
                      ],)),
                     ),
                   ),
               ),
                const SizedBox(height: 25,),
                Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 60,
                          child: Center(
                              child: Text('Proceed to Payment',
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
                                    blurRadius: 1)
                              ]),
                        ),
                        const SizedBox(height: 25,)
          ],
        ),
      )
    );
  }
}