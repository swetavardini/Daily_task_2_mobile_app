import 'package:flutter/material.dart';
import '../data/dummy_data.dart'; // Import dummy data
// import '../models/car.dart';    // Import Car model

class  HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Available Cars')),
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final car = carList[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(car.imageUrl),
              ),
              title: Text(car.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(car.description, maxLines: 2, overflow: TextOverflow.ellipsis),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: car,
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/profile'),
        // child: const Icon(Icons.person),
        tooltip: 'Go to Profile',
        child: const Icon(Icons.person),

      ),
    );
  }
}