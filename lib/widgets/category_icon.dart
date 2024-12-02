import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final String title;
  final String iconPath;

  CategoryIcon({required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orangeAccent, width: 2),
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(iconPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
