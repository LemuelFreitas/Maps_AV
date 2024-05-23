import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Map3 extends StatefulWidget {
  const Map3({super.key});

  @override
  State<Map3> createState() => _PrincipalState();
}

class _PrincipalState extends State<Map3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Maps'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(12.25040891665012, -38.9617932441591), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  // urlTemplate: 'https://www.google.com/maps/{z}/{x}/{y}.png',
                  //  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,


                       point: LatLng(-12.25040891665012, -38.9617932441591),
                      builder: (ctx) => Container(
                          child: Icon(Icons.location_on, color:Colors.red)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
    );
  }
}
