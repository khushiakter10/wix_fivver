// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map_animations/flutter_map_animations.dart';
// import 'package:latlong2/latlong.dart';
//
// class KhushiScreen extends StatelessWidget {
//   const KhushiScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MapScreen(),
//     );
//   }
// }
//
// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});
//
//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> with TickerProviderStateMixin {
//   late final AnimatedMapController _animatedMapController;
//
//   final LatLng _initialLocation = LatLng(23.8103, 90.4125); // Dhaka
//   final LatLng _targetLocation = LatLng(22.3475, 91.8123); // Chittagong
//
//   @override
//   void initState() {
//     super.initState();
//     _animatedMapController = AnimatedMapController(vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Map Animations'),
//         backgroundColor: Colors.teal,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.location_pin),
//             onPressed: () {
//               _animatedMapController.animateTo(
//                 dest: _targetLocation,
//                 zoom: 13.0,
//                 curve: Curves.easeInOut,
//               );
//
//             },
//           ),
//         ],
//       ),
//
//       /// ✅ Use AnimatedFlutterMap instead of FlutterMap
//       ///
//       body:
//
//       FlutterMap(
//         mapController: _animatedMapController.mapController,
//
//         options: MapOptions(
//           center: _initialLocation,
//           zoom: 10,
//         ),
//         children: [
//           TileLayer(
//             urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//             userAgentPackageName: 'com.example.app',
//           ),
//           MarkerLayer(
//             markers: [
//               Marker(
//                 point: _initialLocation,
//                 width: 60,
//                 height: 60,
//                 child: const Icon(Icons.location_pin, color: Colors.red, size: 40),
//               ),
//             ],
//           ),
//         ],
//       ),
//
//     );
//   }
// }
