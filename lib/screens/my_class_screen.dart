import 'package:flutter/material.dart';

class MyClassScreen extends StatelessWidget {
  // Sample data for the users in the class, including last message and unread count
  final List<Map<String, dynamic>> classUsers = [
    {
      'name': 'wayan',
      'image': 'https://via.placeholder.com/150',
      'lastMessage': 'Hey, are you coming to class today?',
      'unreadCount': 2,
    },
    {
      'name': 'Ridho',
      'image': 'https://via.placeholder.com/150',
      'lastMessage': 'Don\'t forget to bring the notes.',
      'unreadCount': 1,
    },
    {
      'name': 'Rizal',
      'image': 'https://via.placeholder.com/150',
      'lastMessage': 'I need help with the project.',
      'unreadCount': 0,
    },
    {
      'name': 'Fadiel',
      'image': 'https://via.placeholder.com/150',
      'lastMessage': 'Let\'s study together this weekend.',
      'unreadCount': 5,
    },
    {
      'name': 'Anam',
      'image': 'https://via.placeholder.com/150',
      'lastMessage': 'Can you send me the file?',
      'unreadCount': 0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: AppBar(
        title: Text('My Class'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Class Title
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Class Members',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            // List of users in the class
            Expanded(
              child: ListView.builder(
                itemCount: classUsers.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(classUsers[index]['image']!),
                      ),
                      title: Text(
                        classUsers[index]['name']!,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        classUsers[index]['lastMessage']!,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: classUsers[index]['unreadCount'] > 0
                          ? Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 8.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                classUsers[index]['unreadCount'].toString(),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : Icon(Icons.chat, color: Colors.blue),
                      onTap: () {
                        // Navigate to the detailed chat screen (implement later)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              userName: classUsers[index]['name']!,
                              userImage: classUsers[index]['image']!,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final String userName;
  final String userImage;

  ChatScreen({required this.userName, required this.userImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
        backgroundColor: Colors.white,
        elevation: 1.0,
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(userImage),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Chat messages area (simplified for now)
            Expanded(
              child: ListView.builder(
                itemCount: 10, // This is just a static number of messages
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      'Message $index',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'This is a message from $userName',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  );
                },
              ),
            ),
            // Message input area
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 16.0,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // Implement send message action
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
