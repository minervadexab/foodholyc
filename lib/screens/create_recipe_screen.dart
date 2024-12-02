import 'package:flutter/material.dart';

class CreateRecipeScreen extends StatefulWidget {
  @override
  _CreateRecipeScreenState createState() => _CreateRecipeScreenState();
}

class _CreateRecipeScreenState extends State<CreateRecipeScreen> {
  final TextEditingController recipeNameController = TextEditingController();
  final TextEditingController chefNameController = TextEditingController();
  final TextEditingController ingredientsController = TextEditingController();
  final TextEditingController stepsController = TextEditingController();
  final TextEditingController videoUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Recipe'),
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
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recipe Name Field
              Text('Recipe Name', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: recipeNameController,
                decoration: InputDecoration(
                  hintText: 'Enter recipe name',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Chef Name Field
              Text('Chef Name', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: chefNameController,
                decoration: InputDecoration(
                  hintText: 'Enter chef name',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Ingredients Field
              Text('Ingredients', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: ingredientsController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Enter ingredients',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Steps Field
              Text('Steps', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: stepsController,
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: 'Enter steps',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Video URL Field
              Text('Video URL (Optional)', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: videoUrlController,
                decoration: InputDecoration(
                  hintText: 'Enter video URL (optional)',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 24.0),

              // Save Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // iconColor: Colors.orange,
                  backgroundColor: const Color.fromARGB(255, 254, 165, 0),
                  textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  // Handle save recipe logic here
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Recipe Created'),
                      content: Text('Your recipe has been created successfully!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('Save Recipe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
