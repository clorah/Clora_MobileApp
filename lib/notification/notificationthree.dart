import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class notifcationthree extends StatefulWidget {
  const notifcationthree({super.key});

  @override
  State<notifcationthree> createState() => _notifcationthreeState();
}

class _notifcationthreeState extends State<notifcationthree> {
  final List notification = [
    ['Your notificatin from Dr shuab has been received', '9m ago',1],
    ['Your notification from Dr shuab has been received', '8m ago',1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '8m ago',1],
    ['Your notification from Dr shuab has been received', '9m ago',1],
    ['Your notification from Dr shuab has been received', '8 min ago',1],
    ['Your notification from Dr shuab has been received', '8 min ago',1],
    ['Your notification from Dr shuab has been received', '9m ago',1],
    ['Your notification from Dr shuab has been received', '8 min ago',1],
    ['Your notification from Dr shuab has been received', '9m ago',1],
    ['Your notification from Dr shuab has been received', '8 min ago',1],
    ['Your notification from Dr shuab has been received', '9m ago',1],
  ];
  Color colors = Color.fromARGB(255, 245, 185, 206);
  Color colorsIcon = Color.fromARGB(255, 234, 90, 138);
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
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            const SizedBox(
              width: 15,
            ),
            Text('Notifications',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: notification.length,
                itemBuilder: ((context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          width: double.infinity,
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                                decoration: BoxDecoration(
                                    color: notification[index][1] == '9m ago'
                                        ? Color.fromARGB(255, 191, 221, 245)
                                        : colors,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 80,
                                width: 80,
                                child: Icon(
                                  Icons.notifications_active_outlined,
                                  color: notification[index][1] == '9m ago' ? Color.fromARGB(255, 9, 134, 237) : colorsIcon,
                                  size: 27.5,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${notification[index][0]}',
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          letterSpacing: 0.5)),
                                ),
                                flex: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 45),
                                    child: Text(
                                      '${notification[index][1]}',
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1.0,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Center(child: Text('${notification[index][2]}',style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white)),)))

                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: Color.fromARGB(255, 212, 210, 210),
                        )
                      ],
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
