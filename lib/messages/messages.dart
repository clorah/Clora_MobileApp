import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'messagesone.dart';
import 'messagestwo.dart';

class messages extends StatefulWidget {
  const messages({
    super.key,
  });

  @override
  State<messages> createState() => _messagesState();
}

class _messagesState extends State<messages> {
  String message = '';
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(12.0),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Colors.blue),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 29,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Dr Thomas Tyler',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 25)),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: const Image(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk='),
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              width: double.infinity,
              height: 1000,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Card(
                        margin: EdgeInsets.fromLTRB(110, 5, 10, 10),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        color: Colors.lightBlue[100],
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
                          child: Text(
                            'Hello, verything?are you d up on youyou,Hello, how are you doing? how is everything?are you d up on you,Hello, how are you doing? how is everything?are you d up on you,Hello, how are you doing? how is everything?are you d up on you',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(fontSize: 11, height: 1.7)),
                          ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('10:28AM',style: GoogleFonts.inter(textStyle: TextStyle(color: Color.fromARGB(255, 157, 156, 156),fontSize: 13)),),
                           Icon(Icons.check,color: Colors.blue,size: 16,)

                          ],
                      ),
                       )
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        margin: EdgeInsets.fromLTRB(10, 5, 110, 5),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        color: Color.fromARGB(255, 248, 246, 246),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
                          child: Text(
                            'Hello, verything?are you d up on youyou,Hello, how are you doing? how is everything?are you d up on you,Hello, how are you doing? how is everything?are you d up on you,Hello, how are you doing? how is everything?are you d up on you',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(fontSize: 11, height: 1.7)),
                          ),
                        ),
                      ),
                     Padding(
                         padding: const EdgeInsets.fromLTRB(0, 5, 105, 0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('10:28AM',style: GoogleFonts.inter(textStyle: TextStyle(color: Color.fromARGB(255, 157, 156, 156),fontSize: 13)),),
                           

                          ],
                      ),
                       )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        
                        controller: messageController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 243, 248),
                          hintText: 'Write Message',
                          prefixIcon: Icon(Icons.attach_email),
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.emoji_emotions_outlined,color: Color.fromARGB(255, 51, 51, 51),),
                              Icon(Icons.send_outlined,color: Color.fromARGB(255, 41, 41, 41),)
                            ],
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Color.fromARGB(255, 180, 179, 179))
                          )
                        ),
                      ),
                    ),
                    
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          message = messageController.text;
                        });
                      }),
                      child: Text('send message'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
