import 'package:clora/routes/routes.dart';
import 'package:clora/services/services.dart';
import 'package:clora/state_management_provider/fetch_user.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';



void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
      create: (context) => FetchUser(),
      builder: (context, child) {
      
      return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: routeManager.homePageOne,
      onGenerateRoute: routeManager.routeSettings,
    );
    },);
   
  }
}
