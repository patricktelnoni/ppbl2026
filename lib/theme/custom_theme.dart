import 'package:flutter/material.dart';

class CustomTheme extends StatelessWidget {
  const CustomTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Tema custom"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){},
              child: Text("Tombol elevated"),
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text("Tombol Kedua")
          ),
          Text(
              "Display Large",
              style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Body medium",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Mail',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
