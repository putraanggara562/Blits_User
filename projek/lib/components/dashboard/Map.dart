import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng( -5.450000, 105.266670),
        zoom: 9.2,
      ),
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'Blits Ambulance contributors',
          onSourceTapped: null,
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng( -5.450000, 105.266670),
              width: 280,
              height: 280,
              builder: (context) => const Icon(
                Icons.location_on,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// FlutterMap(
//     options: MapOptions(),
//     children: [
//         MarkerLayer(
//             markers: [
//                 Marker(
//                   point: LatLng(30, 40),
//                   width: 80,
//                   height: 80,
//                   builder: (context) => FlutterLogo(),
//                 ),
//             ],
//         ),
//     ],
// );
