import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';

class Map_Screen extends StatefulWidget {
  const Map_Screen({super.key});

  @override
  State<Map_Screen> createState() => _Map_ScreenState();
}

class _Map_ScreenState extends State<Map_Screen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> with TickerProviderStateMixin {
  late final AnimatedMapController _animatedMapController;
  TextEditingController _searchController = TextEditingController();

  final LatLng _initialLocation = LatLng(23.8103, 90.4125); // Dhaka

  @override
  void initState() {
    super.initState();
    _animatedMapController = AnimatedMapController(vsync: this);
  }

  void _searchLocation(String query) {
    // Dinajpur example: coordinates for Dinajpur (hardcoded)
    LatLng targetLocation;

    if (query.toLowerCase() == 'dinajpur') {
      targetLocation = LatLng(25.4624, 88.6348); // Dinajpur Coordinates
    } else {
      // Default location or use an API to get the latitude/longitude
      targetLocation = _initialLocation;
    }

    // Animate to the new location (targetLocation)
    _animatedMapController.animateTo(
      dest: targetLocation,
      zoom: 13.0,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Map Animations'),
        backgroundColor: Colors.teal,
        actions: [
          // Search Button (icon)
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              _searchLocation(_searchController.text);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search TextField
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Search for a location',
                border: OutlineInputBorder(),
              ),
            ),
          ),

          // Map display
          Expanded(
            child: FlutterMap(
              mapController: _animatedMapController.mapController,
              options: MapOptions(
                center: _initialLocation,
                zoom: 10,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: _initialLocation,
                      width: 60,
                      height: 60,
                      child: const Icon(Icons.location_pin, color: Colors.red, size: 40),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
