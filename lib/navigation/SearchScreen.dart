import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Searchscreen extends StatelessWidget {
  final String query;
  final String sort;
  
  const Searchscreen({super.key, required this.query, required this.sort});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => context.go('/'), // Navigates up/back
        ),
        title: Text("Search Page"),
      ),
      body: Text("Search query parameter $query sorted by $sort"),
    );
  }
}
