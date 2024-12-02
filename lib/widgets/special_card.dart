import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodHolyc'),
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
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Recipe Section Title
          Text(
            'Special Smoothies',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),

          // Special Cards Grid Layout
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,  // Ensures the grid doesn't expand to fill all available space
            childAspectRatio: 0.75,  // Adjust to make the cards more rectangular
            crossAxisSpacing: 16.0,  // Horizontal spacing between grid items
            mainAxisSpacing: 16.0,  // Vertical spacing between grid items
            children: [
              SpecialCard(
                title: 'Carrot Healthy Juice Smoothie',
                imageUrl: 'assets/images/sample_image.jpg',
              ),
              SpecialCard(
                title: 'Strawberry Juice Smoothie',
                imageUrl: 'assets/images/sample_image.jpg',
              ),
              SpecialCard(
                title: 'Mango Smoothie',
                imageUrl: 'assets/images/sample_image.jpg',
              ),
              SpecialCard(
                title: 'Avocado Smoothie',
                imageUrl: 'assets/images/sample_image.jpg',
              ),
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
            Navigator.pushReplacementNamed(context, '/favorites');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/daily');
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
            label: 'Daily',
          ),
        ],
      ),
    );
  }
}

class SpecialCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  SpecialCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            // Image background
            Image.asset(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // Text Overlay
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                color: Colors.black.withOpacity(0.5),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
