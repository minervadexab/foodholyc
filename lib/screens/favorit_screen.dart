import 'package:flutter/material.dart';
import 'package:foodholyc_app/models/recipe.dart';
import 'package:foodholyc_app/screens/profile_screen.dart';
import 'package:foodholyc_app/screens/recipe_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Recipe> favoriteRecipes = [
    Recipe(
      title: 'Mango Delight Smoothie',
      category: 'Juicy',
      duration: '8 min',
      calories: '200 cal',
      chefName: 'Chef Sam',
      imageUrl: 'assets/images/sample_image.jpg',
      ingredients: 'Mango, Yogurt, Honey',
      steps: '1. Peel the mango\n2. Blend all ingredients\n3. Serve chilled',
      videoUrl: '',
    ),
    Recipe(
      title: 'Blueberry Protein Smoothie',
      category: 'Protein',
      duration: '12 min',
      calories: '300 cal',
      chefName: 'Chef Amy',
      imageUrl: 'assets/images/sample_image.jpg',
      ingredients: 'Blueberries, Protein Powder, Milk',
      steps: '1. Wash the blueberries\n2. Blend all ingredients\n3. Serve chilled',
      videoUrl: '',
    ),
    Recipe(
      title: 'Tropical Breeze Smoothie',
      category: 'Fruity',
      duration: '10 min',
      calories: '250 cal',
      chefName: 'Chef Leo',
      imageUrl: 'assets/images/sample_image.jpg',
      ingredients: 'Pineapple, Mango, Coconut Milk',
      steps: '1. Peel the pineapple\n2. Blend all ingredients\n3. Serve chilled',
      videoUrl: '',
    ),
    Recipe(
      title: 'Berry Blast Smoothie',
      category: 'Fruity',
      duration: '10 min',
      calories: '220 cal',
      chefName: 'Chef Kate',
      imageUrl: 'assets/images/sample_image.jpg',
      ingredients: 'Strawberries, Blueberries, Almond Milk',
      steps: '1. Wash the berries\n2. Blend all ingredients\n3. Serve chilled',
      videoUrl: '',
    ),
    Recipe(
      title: 'Avocado Protein Smoothie',
      category: 'Healthy',
      duration: '15 min',
      calories: '300 cal',
      chefName: 'Chef John',
      imageUrl: 'assets/images/sample_image.jpg',
      ingredients: 'Avocado, Protein Powder, Almond Milk',
      steps: '1. Peel the avocado\n2. Blend all ingredients\n3. Serve chilled',
      videoUrl: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      body: favoriteRecipes.isEmpty
          ? Center(
              // Display message when there are no favorite recipes
              child: Text(
                'No favorites yet',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: favoriteRecipes.length,
              itemBuilder: (context, index) {
                final recipe = favoriteRecipes[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailScreen(recipe: recipe),
                      ),
                    );
                  },
                  child: _buildSpecialCard(recipe),
                );
              },
            ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => FavoritesScreen()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.orange),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.orange),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.orange),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialCard(Recipe recipe) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 8,
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                          'https://www.officechoice.com.au/images/ProductImages/500/526155.jpg',
                        ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.category,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      recipe.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${recipe.duration} | ${recipe.calories}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
