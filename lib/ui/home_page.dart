import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:theme_app/services/theme_sevices.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState(); // 
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
      onTap: () {
        ThemeService().switchTheme();
      },
      child: Icon(Icons.nightlight_round, color: Colors.white, size: 20),
    ),
    actions: [
      Icon(Icons.person, color: Colors.white, size: 20),
      SizedBox(width: 20),
      Icon(Icons.notifications, color: Colors.white, size: 20),
      SizedBox(width: 20),
      Icon(Icons.settings, color: Colors.white, size: 20),
      SizedBox(width: 20),
    ]
      ),
      
    
      body: Center(
        child: Text(
          'Welcome',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary.Color(0xFF6C63FF),
          ),
        ),
      ),
    );
  }
}

extension on Color {
  Color(int i) {}
}


