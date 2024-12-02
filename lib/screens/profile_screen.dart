import 'package:flutter/material.dart';
import 'package:foodholyc_app/screens/create_market_screen.dart';
import 'package:foodholyc_app/screens/create_recipe_screen.dart';
import 'package:foodholyc_app/screens/my_class_screen.dart';
import 'package:foodholyc_app/screens/my_market_screen.dart';
import 'package:foodholyc_app/screens/my_recipe_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
        color: Colors.white, // Set the background color to pure white
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Profile Picture and Name
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://www.greenscene.co.id/wp-content/uploads/2022/03/Luffy-9.jpg',
                        )
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Rayhan Ramdhani',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '77rayhan33@example.com',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                // Profile Options
                ListTile(
                  leading: Icon(Icons.edit, color: Colors.orange),
                  title: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    // Navigate to Edit Profile Screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.lock, color: Colors.orange),
                  title: Text(
                    'Change Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    // Navigate to Change Password Screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.history, color: Colors.orange),
                  title: Text(
                    'Order History',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    // Navigate to Order History Screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.receipt, color: Colors.orange),
                  title: Text(
                    'Create Recipe',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateRecipeScreen()),
                  );
                },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.book, color: Colors.orange),
                  title: Text(
                    'My Recipe',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyRecipeScreen()),
                  );
                },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.store, color: Colors.orange),
                  title: Text(
                    'My Market',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyMarketScreen()),
                  );
                },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.add_business, color: Colors.orange),
                  title: Text(
                    'Create Market',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateMarketScreen()),
                  );
                },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.live_tv, color: Colors.orange),
                  title: Text(
                    'Live',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    // Navigate to Live Screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.class_, color: Colors.orange),
                  title: Text(
                    'My Class',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyClassScreen()),
                  );
                },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help, color: Colors.orange),
                  title: Text(
                    'Help & Support',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    // Navigate to Help & Support Screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.orange),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    // Handle Logout
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/favorites');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/profile');
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
}
