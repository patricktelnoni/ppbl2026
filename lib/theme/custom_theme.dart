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
              "Pakai tema",
              style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Pakai tema",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
