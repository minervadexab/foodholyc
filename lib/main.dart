import 'package:flutter/material.dart';
import 'package:foodholyc_app/models/recipe.dart';
import 'package:foodholyc_app/screens/favorit_screen.dart';
import 'package:foodholyc_app/screens/home_screen.dart';
import 'package:foodholyc_app/screens/login_screen.dart';
import 'package:foodholyc_app/screens/profile_screen.dart';
import 'package:foodholyc_app/screens/recipe_detail_screen.dart';
import 'package:foodholyc_app/screens/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodholyc_app/bloc/auth_bloc.dart';
import 'package:foodholyc_app/bloc/auth_event.dart';
import 'package:foodholyc_app/bloc/auth_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodholyc_app/firebase_options.dart';
import 'package:foodholyc_app/screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
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
          '/profile': (context) => ProfileScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(), // Add this line
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
      ),
    );
  }
}
