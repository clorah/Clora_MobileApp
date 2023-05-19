import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_jap_icons/medical_icons_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class medicalrecordthree extends StatefulWidget {
  const medicalrecordthree({super.key});

  @override
  State<medicalrecordthree> createState() => _medicalrecordthreeState();
}

class _medicalrecordthreeState extends State<medicalrecordthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
            children: [
              Icon(Icons.arrow_back,color: Colors.black,),
              const SizedBox(width: 10,),
              Text('Medical Record',style: GoogleFonts.inter(textStyle: TextStyle(color:Colors.black,  fontSize: 19,fontWeight: FontWeight.bold)))
            ],
          ),
          const SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Diagnosis e.g Malaria',
                     prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: Icon( MedicalIcons.i_diabetes_education),
                    ) ,
                     contentPadding: EdgeInsets.symmetric(vertical: 25),
                    focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey,width: 2),
                             borderRadius: BorderRadius.circular(20)
                    ),
                     enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey,width: 2),
                             borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                  const SizedBox(height: 20,),
                  TextField(
                  decoration: InputDecoration(
                    hintText: 'Name of sepcialist',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: Icon( MedicalIcons.i_neurology),
                    ) ,
                     contentPadding: EdgeInsets.symmetric(vertical: 25),
                    focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey,width: 2),
                             borderRadius: BorderRadius.circular(20)
                    ),
                     enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey,width: 2),
                             borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                    const SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Specialization e.g Dentist',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: Icon( MedicalIcons.i_dental),
                    ) ,
                    prefixIconColor: Colors.grey,
                  contentPadding: EdgeInsets.symmetric(vertical: 25),
                    focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey,width: 2),
                             borderRadius: BorderRadius.circular(20)
                    ),
                     enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey,width: 2),
                             borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Clinic',
                      prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: Icon( MedicalIcons.health_services),
                    ) ,
                     contentPadding: EdgeInsets.symmetric(vertical: 25),
                    focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey,width: 2),
                             borderRadius: BorderRadius.circular(20)
                    ),
                     enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey,width: 2),
                             borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                const SizedBox(height: 70,),
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
          )
          ],
        ),
      ),
    );
  }
}