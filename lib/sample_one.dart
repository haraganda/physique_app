
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 58, 17, 123),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.teal[200],
                backgroundImage: const AssetImage("images/arpit.jpg"),
                foregroundColor: const Color.fromARGB(70, 10, 20, 30),
              ),
              const Text(
                "Arpit Patel",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
