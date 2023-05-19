import 'package:clora/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class messagesTwo extends StatefulWidget {
  const messagesTwo({super.key});

  @override
  State<messagesTwo> createState() => _messagesTwoState();
}

class _messagesTwoState extends State<messagesTwo> {
  List messages = <Object>[
    ['Your notificatin from Dr shuab has been received', '9m ago', 1],
    ['Your notification from Dr shuab has been received', '8m ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '8m ago', 1],
    ['Your notification from Dr shuab has been received', '9m ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '9m ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '9m ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '9m ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '9m ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '9m ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '9m ago', 1],
    ['Your notification from Dr shuab has been received', '8 min ago', 1],
    ['Your notification from Dr shuab has been received', '9m ago', 1],
  ];
  @override
  bool isDesktops(BuildContext context) =>
      MediaQuery.of(context).size.width >= 422;
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 400;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 399;
  bool isMobiles(BuildContext context) =>
      MediaQuery.of(context).size.width <= 340;

  Widget build(BuildContext context) {
    var size = isDesktop(context)
        ? MediaQuery.of(context).size.width / 10
        : isMobile(context)
            ? MediaQuery.of(context).size.width / 15
            : isDesktops(context)
                ? 240 / 2
                : 240 / 2;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: double.parse('${messages.length}') * 100,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      right: isDesktop(context)
                          ? MediaQuery.of(context).size.width / 10
                          : isMobile(context)
                              ? MediaQuery.of(context).size.width / 15
                              : isDesktops(context)
                                  ? 240 / 2
                                  : 240 / 2,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 75, vertical: 22),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: (() {
                           
                          }),
                          child: Text(
                            'Calls',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(color: Colors.white)),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(size, 0, 0, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 238, 237, 237),
                              elevation: 0,
                              padding: EdgeInsets.symmetric(
                                  horizontal: isMobiles(context) ? 50 : 65,
                                  vertical: 22),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: (() {
                              Navigator.of(context)
                                .pushNamed(routeManager.messageOne);
                          }),
                          child: Text(
                            'Chats',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(color: Colors.black)),
                          )),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: messages.length,
                  itemBuilder: ((context, index) {
                    return Slidable(
                      endActionPane:
                          ActionPane(motion: const BehindMotion(), children: [
                        SlidableAction(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          onPressed: ((context) {
                            setState(() {
                              SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    'User has been deleted',
                                    style: GoogleFonts.inter(
                                        textStyle:
                                            TextStyle(color: Colors.white)),
                                  ));
                              messages.removeAt(index);
                            });
                          }),
                          backgroundColor: Colors.red,
                          icon: Icons.delete_rounded,
                        )
                      ]),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.symmetric(vertical: 15),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              width: double.infinity,
                              height: 72,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                                      decoration: BoxDecoration(
                                          color: messages[index][1] == '9m ago'
                                              ? Color.fromARGB(
                                                  255, 191, 221, 245)
                                              : Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 80,
                                      width: 80,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image(
                                          image: NetworkImage(
                                              'https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk='),
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text('Dr Thomas Tyler',
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    letterSpacing: 0.5))),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.call_received,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Incoming',
                                              style: GoogleFonts.inter(
                                                  textStyle: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 184, 183, 183))),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 45),
                                        child: Text(
                                          '${messages[index][1]}',
                                          style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1.0,
                                                  color: Colors.grey)),
                                        ),
                                      ),
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
                      ),
                    );
                  })),
            ),
          ],
        ),
      ),
    ));
  }
}
