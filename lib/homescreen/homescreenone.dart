import 'package:clora/homescreen/doctors_category.dart';
import 'package:clora/homescreen/mainhomescreenone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreenOne extends StatefulWidget {
  const homeScreenOne({super.key});

  @override
  State<homeScreenOne> createState() => _homeScreenOneState();
}

class _homeScreenOneState extends State<homeScreenOne> {
  var Clicked = 0;

  final bottomPages = const [
   mainhomescreenone(),
   doctors(),
    Center(
      child: Text('heys'),
    ),
    Center(
      child: Text('heyys'),
    )
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomPages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 78,
        child: BottomNavigationBar(
          selectedLabelStyle: GoogleFonts.inter(
            textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 11)
          ),
           unselectedLabelStyle: GoogleFonts.inter(
            textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 11)
          ),
          iconSize: 23.0,
          elevation: 18.0,
          selectedItemColor: Color.fromARGB(255, 1, 138, 251),
          unselectedItemColor: Color.fromARGB(255, 99, 176, 239),
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items:   <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Icon( Icons.calendar_month_outlined) ,
                ),  label: 'Appointments'),
            BottomNavigationBarItem(icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Icon(Icons.chat_outlined),
            ), label: 'Chats'),
            BottomNavigationBarItem(icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: _selectedIndex == 3 ? Icon(Icons.person) : Icon(Icons.person_outline),
            ), label: 'Accounts')
          ],
          onTap: ((index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
        ),
      ),
    );
  }
}
