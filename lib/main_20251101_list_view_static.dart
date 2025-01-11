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
        fontFamily: 'Oswald',
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

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.black)),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.black)),
              child: const Center(
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.black)),
              child: const Center(
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.black)),
              child: const Center(
                child: Text(
                  '4',
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.black)),
              child: const Center(
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
          ],
        ));
  }
}
