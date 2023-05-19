import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_jap_icons/medical_icons_icons.dart';

class appointmentscreenthree extends StatefulWidget {
  const appointmentscreenthree({super.key});

  @override
  State<appointmentscreenthree> createState() => _appointmentscreenthreeState();
}

class _appointmentscreenthreeState extends State<appointmentscreenthree> {
  final List appointment = [
    [
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
     
      'Dr Thomas Tyler',
      'Physiotherapist',
      '7 February, 2023',
      '9:30AM',
      'Pending'
    ],
    [
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
    
      'Dr Thomas Tyler',
      'Physiotherapist',
      '7 February, 2023',
      '9:30AM',
      'Confirmed'
    ],
    [
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
     
      'Dr Thomas Tyler',
      'Physiotherapist',
      '7 February, 2023',
      '9:30AM',
      'Finished'
    ],
     [
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
     
      'Dr Thomas Tyler',
      'Physiotherapist',
      '7 February, 2023',
      '9:30AM',
      'Finished'
    ]
  ];
  Color colorsOne = Colors.blue;
  Color colorsTwo = Colors.green;
  Color colorsThree = Colors.orange;
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
            Text('Appointments',style: GoogleFonts.inter(textStyle: TextStyle(color:Colors.black,  fontSize: 19,fontWeight: FontWeight.bold)))
          ],
        ),

      ),
      body: 
         
          ListView.builder(
            scrollDirection: Axis.vertical,
           
            shrinkWrap: true,
            itemCount: appointment.length,
            itemBuilder: ((context, index) {
            return Container(
            
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(blurRadius: 2, color: Color.fromARGB(255, 201, 200, 200))
                ]
              ),
              width: double.infinity,
              height: 134,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                children: [
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                   
                    children: [
                    
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage(appointment[index][0]),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10,),
                     
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${appointment[index][1]}',style: GoogleFonts.inter(textStyle: TextStyle(color:Colors.black,  fontSize: 14,fontWeight: FontWeight.bold))),
                            const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(MedicalIcons.pediatrics,color: Color.fromARGB(255, 87, 86, 86),size: 13,),
                              const SizedBox(width: 5,),
                              Text('${appointment[index][2]}',style: GoogleFonts.inter(textStyle: TextStyle(color: Color.fromARGB(255, 87, 86, 86),fontSize: 11)),)
                            ],
                          ),
                          const SizedBox(height: 10,),
                           Row(
                            children: [
                              Icon(Icons.calendar_month,color: Color.fromARGB(255, 87, 86, 86),size: 15,),
                               const SizedBox(width: 5,),
                              Text('${appointment[index][3]}',style: GoogleFonts.inter(textStyle: TextStyle(color: Color.fromARGB(255, 87, 86, 86),fontSize: 13)))
                            ],
                          ),
                              const SizedBox(height: 10,),
                           Row(
                            children: [
                              Icon(Icons.lock_clock,color: Color.fromARGB(255, 87, 86, 86),size: 15,),
                               const SizedBox(width: 5,),
                              Text('${appointment[index][4]}',style: GoogleFonts.inter(textStyle: TextStyle(color: Color.fromARGB(255, 87, 86, 86),fontSize: 13))),
                              const SizedBox(width: 40,),
                               ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: appointment[index][5] == 'Pending' ? colorsThree : appointment[index][5] == 'Confirmed' ? colorsOne : colorsTwo
                                ),
                                onPressed: (() {
                        
                      }), child: Text('${appointment[index][5]}',style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 11)),))
                            ],
                          )
                        ],
                      ),
                     
                    ],
                  )
                ],
              ),
            );
          })
        
      ),
    );
  }
}
