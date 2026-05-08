import 'package:flutter/material.dart';

class CustomListviewCard extends StatelessWidget {

  final String title;
  final IconData icon;
  final Color color;
  final String img;


  // Constructor with required parameters
  const CustomListviewCard({
    super.key,
    required this.title,
    required this.icon,
    this.color = Colors.blue,
    required this.img
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(
            img,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.image_not_supported),
          ),
          ListTile(
            title: Text("${title}", style: Theme.of(context).textTheme.bodySmall),
            subtitle: const Text("Source: Flutter CDN Example"),
            trailing: Icon(icon),
          ),
        ],
      ),
    );;
  }
}
