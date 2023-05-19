import 'package:clora/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class doctors extends StatefulWidget {
  const doctors({super.key});

  @override
  State<doctors> createState() => _doctorsState();
}

class _doctorsState extends State<doctors> {
  final List doctors = [
    [1, 'Dentist'],
    [2, 'Optician'],
    [3, 'Neurologist'],
    [4, 'Dermatologist'],
    [5, 'Physiotherapist'],
    [6, 'ENT Specialist'],
    [7, 'Pharmacist'],
    [8, 'Gynecologists'],
    [9, 'ENT ']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(routeManager.mainHomeScreenOne);
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Categories',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  onChanged: (value) {
                    
                  },
                  decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 126, 125, 125))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 126, 125, 125)))),
                ),
              ),
            
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 800,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: doctors.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              routeManager.doctorsSpecification,
                              arguments: {'name': '${doctors[index][1]}'});
                          print('${doctors[index][1]}');
                        },
                        child: Card(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          color: Colors.white,
                          elevation: 10.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Text(
                              '${doctors[index][1]}',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 66, 65, 65))),
                            ),
                          ),
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}
