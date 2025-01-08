import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Sandbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple, // Warna background AppBar
          foregroundColor: Colors.white, // Warna teks pada AppBar
        ),
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Sandbox'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () => {},
            )
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.rectangle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(4, 8),
                  blurRadius: 12,
                ),
              ],
              borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          child: const Text(
            'Hello, World!',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
