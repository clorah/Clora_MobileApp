import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class medicalrecordtwo extends StatefulWidget {
  const medicalrecordtwo({super.key});

  @override
  State<medicalrecordtwo> createState() => _medicalrecordtwoState();
}

class _medicalrecordtwoState extends State<medicalrecordtwo> {
  final List medicalRecord = [
    [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ],
     [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ],
     [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ],
     [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ],
     [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ],
     [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ], [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ], [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ], [
      '18.02.2023',
      'Hypertitis B',
      'Surgeon, Dr Thomas Tyler',
      'Medcare Health Clinic'
    ],
    
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                const SizedBox(width: 15,),
                Text('Medical Records',style: GoogleFonts.inter(textStyle: TextStyle(fontWeight: FontWeight.w600)),)
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Add Record', style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),),
                  const SizedBox(width: 10,),
                Icon(Icons.upload_file_outlined,color: Colors.blue,)
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Expanded(
            child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
            itemCount: medicalRecord.length,
            itemBuilder: ((context, index) {
              const SizedBox(
                height: 20,
              );
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 150,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 208, 208, 208),
                          blurRadius: 2)
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${medicalRecord[index][0]}',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Icon(
                          Icons.download_outlined,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Diagnosis',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Color.fromARGB(255, 137, 137, 137),
                                  fontWeight: FontWeight.w600))),
                        Text(
                          '${medicalRecord[index][1]}',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500)),
                        ),
                       
                      ],
                    ),
                     const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Specialist',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Color.fromARGB(255, 137, 137, 137),
                                  fontWeight: FontWeight.w600))),
                        Text(
                          '${medicalRecord[index][2]}',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500)),
                        ),
                       
                      ],
                    ),
                     const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Clinic',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Color.fromARGB(255, 137, 137, 137),
                                  fontWeight: FontWeight.w600))),
                        Text(
                          '${medicalRecord[index][3]}',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500)),
                        ),
                       
                      ],
                    )
                  ],
                ),
              );
            })),
            )
        ],
      )
      
     
    );
  }
}
