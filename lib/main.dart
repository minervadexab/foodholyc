// lib/main.dart

import 'package:flutter/material.dart';
import 'package:foodholyc_app/models/recipe.dart';
import 'package:foodholyc_app/screens/favorit_screen.dart';
import 'package:foodholyc_app/screens/home_screen.dart';
import 'package:foodholyc_app/screens/login_screen.dart';
import 'package:foodholyc_app/screens/profile_screen.dart';
import 'package:foodholyc_app/screens/recipe_detail_screen.dart';
// import 'package:foodholyc_app/screens/favorite_screen.dart';
import 'package:foodholyc_app/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodHolyc',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: WelcomeScreen(),
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/favorites': (context) => FavoritesScreen(),
        "/profile": (context) => ProfileScreen(),
        "/login": (context) => LoginScreen(),
        // Add more routes as necessary
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/recipeDetail') {
          final recipe = settings.arguments as Recipe;
          return MaterialPageRoute(
            builder: (context) {
              return RecipeDetailScreen(recipe: recipe);
            },
          );
        }
        return null;
      },
    );
  }
}
