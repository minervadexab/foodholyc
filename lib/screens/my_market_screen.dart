import 'package:flutter/material.dart';

class MyMarketScreen extends StatelessWidget {
  // Sample data for My Market items
  final List<Map<String, String>> marketItems = [
    {
      'name': 'Fresh Vegetables',
      'description': 'Organic vegetables for your daily needs. Fresh and healthy.',
      'price': '\$20',
      'image': 'https://via.placeholder.com/150', // Image URL (placeholder)
      'location': 'Farmhouse, Downtown',
    },
    {
      'name': 'Handmade Pottery',
      'description': 'Beautiful handmade pottery for decoration. Unique designs.',
      'price': '\$30',
      'image': 'https://via.placeholder.com/150', // Image URL (placeholder)
      'location': 'Art Studio, Eastside',
    },
    {
      'name': 'Crafted Wooden Chairs',
      'description': 'Sturdy and comfortable wooden chairs, perfect for any room.',
      'price': '\$50',
      'image': 'https://via.placeholder.com/150', // Image URL (placeholder)
      'location': 'Woodworking Shop, West End',
    },
    {
      'name': 'Leather Wallet',
      'description': 'Genuine leather wallet for everyday use. Durable and stylish.',
      'price': '\$25',
      'image': 'https://via.placeholder.com/150', // Image URL (placeholder)
      'location': 'Leather Goods, Uptown',
    },
    {
      'name': 'Organic Honey',
      'description': 'Pure organic honey for a healthy lifestyle. Natural and sweet.',
      'price': '\$15',
      'image': 'https://via.placeholder.com/150', // Image URL (placeholder)
      'location': 'Bee Farm, Countryside',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: AppBar(
        title: Text('My Market'),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: marketItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two columns
            crossAxisSpacing: 16.0, // Horizontal space between boxes
            mainAxisSpacing: 16.0, // Vertical space between boxes
            childAspectRatio: 0.75, // Aspect ratio for each box
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Image section
                    Expanded(
                      child: Container(
                        height: 100.0,
                        width: double.infinity,
                        // color: Colors.grey[200],
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          image: DecorationImage(
                            image: NetworkImage(marketItems[index]['image']!),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    // Market name and description
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        marketItems[index]['name']!,
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
                        marketItems[index]['description']!,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    // Location section
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      child: Text(
                        'Location: ${marketItems[index]['location']}',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    // Price section
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        marketItems[index]['price']!,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
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
