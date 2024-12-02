import 'package:flutter/material.dart';
import '../widgets/recipe_card.dart';

class AllRecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Recipes'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          RecipeCard(
            title: 'Pasta Carbonara',
            imageUrl: 'assets/images/pasta_carbonara.jpg',
          ),
          RecipeCard(
            title: 'Carrot Anise Soup',
            imageUrl: 'assets/images/carrot_anise_soup.jpg',
          ),
          RecipeCard(
            title: 'Pancakes',
            imageUrl: 'assets/images/pancakes.jpg',
          ),
        ],
      ),
    );
  }
}
