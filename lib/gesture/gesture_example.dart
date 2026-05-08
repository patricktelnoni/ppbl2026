import 'package:flutter/material.dart';

class GestureExample extends StatelessWidget {
  const GestureExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Example"),
      ),
      body: GestureDetector(
        child:
        InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.1, // Minimum zoom out level
          maxScale: 4.0, // Maximum zoom in level
          child: const Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
        ),
      ),
    );
  }
}
