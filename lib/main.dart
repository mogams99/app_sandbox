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
        body: ScrollingScreen());
  }
}

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 500,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 65),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
