// import 'dart:html';

// import 'package:flutter/material.dart';


// import 'mi.dart';

// void main() => runApp(MaterialApp(home: const Mes()));

// class Mes extends StatefulWidget {
//   const Mes({super.key});

//   @override
//   State<Mes> createState() => _MesState();
// }

// class _MesState extends State<Mes> {
//   late Future<Mi> products;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     products = getMi();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [
//         Container(
//           child: FutureBuilder<Mi>(
//               future: products,
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   return Column(
//                     children: [
//                       Text(snapshot.data!.price),
//                        Text(snapshot.data!.description)
                     
//                     ],
//                   );
//                 } else if (snapshot.hasError) {
//                   return Text("${snapshot.error}");
//                 } else {
//                   return CircularProgressIndicator(
//                     color: Colors.grey,
//                   );
//                 }

//                 // spinner
//               }),
//         )
//       ]),
//     );
//   }
// }
