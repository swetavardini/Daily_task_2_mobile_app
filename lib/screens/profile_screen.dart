import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String profileImage = 'https://www.shutterstock.com/image-vector/young-smiling-man-avatar-brown-600nw-2261401207.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(profileImage),
            ),
            const SizedBox(height: 20),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text('john.doe@example.com', style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}