import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:clora/routes/routes.dart';

class splash_screen_five extends StatefulWidget {
  const splash_screen_five({super.key});

  @override
  State<splash_screen_five> createState() => _splash_screen_fiveState();
}

class _splash_screen_fiveState extends State<splash_screen_five> {
  @override
   void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).pushNamed(routeManager.getStarted));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('lib/assets/Ellipse-48.png',),fit: BoxFit.cover)
            ),
        child: Stack(
          
          children:[ Image(image: AssetImage('lib/assets/Ellipse-46.png',),height: double.infinity,),
          Positioned( child: Center(child: Image(image: AssetImage('lib/assets/chlora.png'),width: double.infinity,)))
          ]
        ),
      )
    );
  }
}