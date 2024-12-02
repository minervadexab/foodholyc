import 'package:flutter/material.dart';

class MyRecipeScreen extends StatelessWidget {
  // Sample data for My Recipes
  final List<Map<String, String>> recipes = [
    {
      'name': 'Spaghetti Carbonara',
      'description': 'A classic Italian pasta dish.',
    },
    {
      'name': 'Chicken Alfredo',
      'description': 'Creamy chicken pasta.',
    },
    {
      'name': 'Veggie Stir Fry',
      'description': 'A healthy vegetable stir fry.',
    },
    {
      'name': 'Beef Stew',
      'description': 'A hearty and rich beef stew.',
    },
    {
      'name': 'Fish Tacos',
      'description': 'Delicious fish tacos with creamy sauce.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Recipe'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        color: Colors.white, // Set the body background color to white
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: recipes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white, // Set background color to white for each card
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Box without images, simple layout
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        recipes[index]['name']!,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        recipes[index]['description']!,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Set button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          // Optional: Handle view recipe button press
                        },
                        child: Text(
                          'View Recipe',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
