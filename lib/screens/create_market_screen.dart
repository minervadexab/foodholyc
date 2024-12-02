import 'package:flutter/material.dart';

class CreateMarketScreen extends StatefulWidget {
  @override
  _CreateMarketScreenState createState() => _CreateMarketScreenState();
}

class _CreateMarketScreenState extends State<CreateMarketScreen> {
  final TextEditingController _marketNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _recipeController = TextEditingController();
  bool _isRecipeForSale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Market'),
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
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Market Name', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: _marketNameController,
                decoration: InputDecoration(
                  hintText: 'Enter market name',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Description', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  hintText: 'Enter market description',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              Text('Location', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: _locationController,
                decoration: InputDecoration(
                  hintText: 'Enter market location',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Price', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: _priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter price',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Recipe for Sale', style: TextStyle(fontFamily: 'Poppins', fontSize: 16)),
              TextField(
                controller: _recipeController,
                decoration: InputDecoration(
                  hintText: 'Enter recipe details',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    value: _isRecipeForSale,
                    onChanged: (bool? value) {
                      setState(() {
                        _isRecipeForSale = value!;
                      });
                    },
                  ),
                  Text(
                    'I am selling the recipe with the market',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Market Created'),
                      content: Text('Your market has been created successfully!'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'Create Market',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
