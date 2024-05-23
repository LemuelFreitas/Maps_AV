import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'map2.dart';
class Map1 extends StatefulWidget {
  const Map1({super.key});

  @override
  State<Map1> createState() => _PrincipalState();
}

class _PrincipalState extends State<Map1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Maps'),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
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
                      point: LatLng(37.7749, -122.4194),
                      // point: LatLng(-23.54179545414396, -46.629475477303366),
                      // point: LatLng(37.7749, -122.4194),
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
