import 'package:flutter/material.dart';

class PraktikumLayout extends StatefulWidget {
  const PraktikumLayout({super.key});

  @override
  State<PraktikumLayout> createState() => _PraktikumLayoutState();
}

class _PraktikumLayoutState extends State<PraktikumLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Praktikum Layout & Theme"),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return _buildTabletLayout();
              } else {
                return _buildMobileLayout();
              }
            }),
      ),
    );
  }

  _buildMobileLayout() {}

  _buildTabletLayout() {}
}
