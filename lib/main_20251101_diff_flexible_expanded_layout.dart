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
        body: ExpandedFlexibleRange());
  }
}

class ExpandedFlexibleRange extends StatelessWidget {
  const ExpandedFlexibleRange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          children: const [
            ExpandedWidget(),
            FlexibleWidget(),
          ],
        ),
        Row(
          children: const [
            ExpandedWidget(),
            ExpandedWidget(),
          ],
        ),
        Row(
          children: const [
            FlexibleWidget(),
            FlexibleWidget(),
          ],
        ),
        Row(
          children: const [
            FlexibleWidget(),
            ExpandedWidget(),
          ],
        ),
      ],
    )));
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.cyan,
        border: Border.all(color: Colors.amber),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'Expanded',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ));
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          )),
    ));
  }
}
