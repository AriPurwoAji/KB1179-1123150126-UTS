import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Flutter',
      home: Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Flutter App'),
        backgroundColor: const Color.fromARGB(255, 105, 194, 239),
        actions: [
          Icon(Icons.person, color: Colors.blue),
          SizedBox(width: 20),
          Icon(Icons.account_tree),
          SizedBox(width: 20),
          Icon(Icons.ac_unit),
          SizedBox(width: 20),
          Icon(Icons.home),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 81, 176, 254),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 4),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              margin: EdgeInsets.all(40),
              color: Colors.amber,
              child: Text(
                'Hello Flutter',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
