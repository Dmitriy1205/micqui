import 'package:flutter/material.dart';

class DefaultAvatar extends StatelessWidget {
  final String? name;
  final double radius;

  const DefaultAvatar({
    super.key,
    required this.name,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    // Generate a random color based on the first letter of the user's name
    Color generateColor(String namer) {
      Map<String, Color> letterToColor = {
        'A': Colors.red,
        'B': Colors.blue,
        'C': Colors.green,
        'D': Colors.yellow,
        'E': Colors.purple,
        'F': Colors.orange,
        'G': Colors.teal,
        'H': Colors.pink,
        'S': Colors.black
      };
      Color defaultColor = Colors.grey[400]!;
      String firstLetter = namer.isEmpty ? '' : namer[0].toUpperCase();
      Color? color = letterToColor[firstLetter];
      return color ?? defaultColor;
    }

    return CircleAvatar(
      radius: radius,
      backgroundColor: generateColor(name ?? ''),
      child: Center(
        child: Text(
          name!,
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
