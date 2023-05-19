import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentUser = LatLng(25.1193, 55.3773);

class google_map extends StatefulWidget {
  const google_map({super.key});

  @override
  State<google_map> createState() => _google_mapState();
}

class _google_mapState extends State<google_map> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
          initialCameraPosition: CameraPosition(target: currentUser)),
    );
  }
}
