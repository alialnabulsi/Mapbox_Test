import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

const accessToken = String.fromEnvironment('ACCESS_TOKEN');

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (accessToken.isEmpty) {
    throw StateError(
      'Mapbox token is missing. Run with ACCESS_TOKEN using --dart-define.',
    );
  }

  MapboxOptions.setAccessToken(accessToken);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Mapbox Map'),
      ),
      body: MapWidget(
        styleUri: 'mapbox://styles/mhamadabouhani/cmuc4tn7400cl01qt4ksidy3x',
       cameraOptions: CameraOptions(
  center: Point(
    coordinates: Position(35.8300, 34.3650),
  ),
  zoom: 15.5,
  bearing: 0,
  pitch: 0,
),
      ),
    );
  }
}