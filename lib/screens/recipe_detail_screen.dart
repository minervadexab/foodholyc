import 'package:flutter/material.dart';
import 'package:foodholyc_app/models/recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Details'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              // Handle favorite action
            },
            color: Colors.red,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add a container with box shadow at the top
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2), // Shadow position
                  ),
                ],
              ),
            ),

            // Image at the top
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 234, 234, 234),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0, 2), // Shadow position
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(recipe.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Recipe Name
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                recipe.title,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),

            // Recipe Category, Duration, and Calories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    label: Text(recipe.category),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: const Color.fromARGB(255, 255, 115, 0),
                  ),
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(recipe.duration, style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 16),
                      Icon(Icons.local_fire_department, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(recipe.calories, style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),

            // Chef Name
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Recipe by: ${recipe.chefName}',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            // Ingredients
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    recipe.ingredients,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // Steps
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Steps',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    recipe.steps,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // Video Placeholder
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                color: Colors.grey.shade300,
                child: Center(
                  child: Text(
                    'Video Placeholder',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),

            // Comment TextField
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Leave a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // Handle comment action
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
