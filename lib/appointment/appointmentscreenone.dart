import 'package:clora/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class appointmentscreenone extends StatefulWidget {
  const appointmentscreenone({super.key});

  @override
  State<appointmentscreenone> createState() => _appointmentscreenoneState();
}

class _appointmentscreenoneState extends State<appointmentscreenone> {
  DateTime dateTime = DateTime.now();
  bool? isChecked = true;
  bool? secondIsChecked = false;

  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, '0');
    final minutes = dateTime.minute.toString().padLeft(2, '0');
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(Icons.arrow_back),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Dr Thomas Tyler',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Surgeon',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: Color.fromARGB(255, 193, 192, 192))),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    'Schedule',
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () async {
                  final date = await pickDate();
                  final newDateTime = DateTime(date!.year, date.month, date.day,
                      dateTime.hour, dateTime.minute);
                  if (date == null) return;
                  setState(() => dateTime = newDateTime);
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'January',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Text(
                                  '${dateTime.weekday == 1 ? 'Mon' : dateTime.weekday == 2 ? 'Tues' : dateTime.weekday == 3 ? 'Wed' : dateTime.weekday == 4 ? 'Thurs' : dateTime.weekday == 5 ? 'Fri' : dateTime.weekday == 6 ? 'Sat' : dateTime.weekday == 7 ? 'Sat' : dateTime.weekday == 2 ? 'Sat' : ''}',
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13))))
                        ],
                      ),
                      Column(
                        children: [
                          Text('${dateTime.day}',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Slots',
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: const CircleBorder(),
                              activeColor: Colors.blue,
                              value: isChecked,
                              onChanged: ((newBool) {
                                setState(() {
                                  isChecked = newBool;
                                  secondIsChecked = false;
                                });
                              })),
                          Text(
                            'Morning',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          )
                        ],
                      ),
                    )),
                Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: const CircleBorder(),
                              activeColor: Colors.blue,
                              value: secondIsChecked,
                              onChanged: ((newBool) {
                                setState(() {
                                  secondIsChecked = newBool;
                                  isChecked = false;
                                });
                              })),
                          Text(
                            'Afternoon',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Time',
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: const CircleBorder(),
                              activeColor: Colors.blue,
                              value: isChecked,
                              onChanged: ((newBool) {
                                setState(() {
                                  isChecked = newBool;
                                  secondIsChecked = false;
                                });
                              })),
                          Text(
                            '7:30am',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          )
                        ],
                      ),
                    )),
                Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: const CircleBorder(),
                              activeColor: Colors.blue,
                              value: secondIsChecked,
                              onChanged: ((newBool) {
                                setState(() {
                                  secondIsChecked = newBool;
                                  isChecked = false;
                                });
                              })),
                          Text(
                            '9:30am',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: const CircleBorder(),
                              activeColor: Colors.blue,
                              value: secondIsChecked,
                              onChanged: ((newBool) {
                                setState(() {
                                  isChecked = newBool;
                                  secondIsChecked = false;
                                });
                              })),
                          Text(
                            '12:00pm',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          )
                        ],
                      ),
                    )),
                Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: const CircleBorder(),
                              activeColor: Colors.blue,
                              value: secondIsChecked,
                              onChanged: ((newBool) {
                                setState(() {
                                  secondIsChecked = newBool;
                                  isChecked = false;
                                });
                              })),
                          Text(
                            '3:00pm',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Appointment Type',
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: const CircleBorder(),
                              activeColor: Colors.blue,
                              value: isChecked,
                              onChanged: ((newBool) {
                                setState(() {
                                  isChecked = newBool;
                                  secondIsChecked = false;
                                });
                              })),
                          Text(
                            'Online',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          )
                        ],
                      ),
                    )),
                Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: const CircleBorder(),
                              activeColor: Colors.blue,
                              value: secondIsChecked,
                              onChanged: ((newBool) {
                                setState(() {
                                  secondIsChecked = newBool;
                                  isChecked = false;
                                });
                              })),
                          Text(
                            'Offline',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context)
                    .pushNamed(routeManager.appointmentScreenTwo);
              }),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 60,
                child: Center(
                    child: Text('Continue',
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
                          blurRadius: 3)
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2024));

  Future<TimeOfDay?> pickTime() => showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute));
}
