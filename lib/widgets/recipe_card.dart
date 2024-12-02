import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  RecipeCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageUrl,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          '10 min | 250 calories',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/recipe_detail');
        },
        trailing: Icon(
          Icons.favorite_border,
          color: Colors.orange,
        ),
      ),
    );
  }
}
