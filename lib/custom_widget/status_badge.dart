import 'package:flutter/material.dart';

class StatusBadge extends StatelessWidget {
  final String text;
  final Color color;
  final IconData iconData;
  final bool isActive;

  const StatusBadge({
    Key? key,
    required this.text,
    required this.color,
    required this.iconData,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
        color: isActive ? color.withOpacity(0.2) : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: isActive ? color : Colors.grey,
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Icon(iconData),
          Text(
            text.toUpperCase(),
            style: TextStyle(
              color: isActive ? color : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
