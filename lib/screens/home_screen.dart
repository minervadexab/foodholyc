import 'package:flutter/material.dart';
import 'package:foodholyc_app/models/recipe.dart';
import 'package:foodholyc_app/screens/favorit_screen.dart';
import 'package:foodholyc_app/screens/recipe_detail_screen.dart';
import 'package:foodholyc_app/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample recipes
    final recipes = [
      Recipe(
        title: 'Carrot Healthy Juice Smoothie',
        category: 'Green',
        duration: '10 min',
        calories: '210 cal',
        chefName: 'Chef John',
        imageUrl: 'assets/images/carrot.jpeg', // Update image path
        ingredients: 'Carrots, Apple, Ginger',
        steps: '1. Cut the carrots\n2. Blend all ingredients\n3. Serve chilled',
        videoUrl: '',
      ),
      Recipe(
        title: 'Strawberry Juice Smoothie',
        category: 'Protein',
        duration: '10 min',
        calories: '250 cal',
        chefName: 'Chef Jane',
        imageUrl: 'assets/images/strawberry_juice.jpeg', // Update image path
        ingredients: 'Strawberries, Milk, Honey',
        steps: '1. Cut the strawberries\n2. Blend all ingredients\n3. Serve chilled',
        videoUrl: '',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('FoodHolyc'),
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
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16.0),
        physics: BouncingScrollPhysics(),
        children: [
          // Categories Header
          Text(
            'Hi, Rayhan Ramdhani',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'Welcome to FoodHolyc',
            style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
          ),
          SizedBox(height: 25),

          // Search Bar
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for recipes',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 227, 66, 7), width: 0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Favorites Section Title
          Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 111, 111, 111),
            ),
          ),
          SizedBox(height: 10),

          // Scrollable Category Icons Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCategoryIcon('Vegan'),
                _buildCategoryIcon('Protein'),
                _buildCategoryIcon('Green'),
                _buildCategoryIcon('Energy'),
                _buildCategoryIcon('Juicy'),
              ],
            ),
          ),
          SizedBox(height: 30),

          // Special Smoothie Section Title
          Text(
            'All Recipes',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),

          // Special Cards with Text and Shadow Effect
          for (var recipe in recipes)
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailScreen(recipe: recipe),
                      ),
                    );
                  },
                  child: _buildSpecialCard(recipe),
                ),
                SizedBox(height: 30),
              ],
            ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
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

  // Method to build each category icon with shadow effect
  Widget _buildCategoryIcon(String title) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(2, 2), // Shadow offset
                ),
              ],
            ),
            child: Icon(
              Icons.category,  // Placeholder icon for categories
              size: 40,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  // Special Card Widget with Text, Image, and Shadow
  Widget _buildSpecialCard(Recipe recipe) {
    return Container(
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
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                image:NetworkImage(
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
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  recipe.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '${recipe.duration} | ${recipe.calories}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
