import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
            Text('Notifications',style: GoogleFonts.inter(textStyle: TextStyle(color:Colors.black,  fontSize: 19,fontWeight: FontWeight.w500,letterSpacing: 1.0)))
          ],
        ),

      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('lib/assets/no-notification.png')),
              const SizedBox(height: 35,),
              Text('You dont have any notificaton!', style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 104, 103, 103),
                                        fontSize: 18,letterSpacing: 1.0))),
              const SizedBox(height: 50,),
               
            ],
          ),
        ),
      ),
    );
  }
}