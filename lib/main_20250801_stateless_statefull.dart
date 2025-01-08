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
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Sandbox'),
          // backgroundColor: Colors.blue, // Optional jika sudah di tema
        ),
        body: Center(
          child: BiggerText(text: 'Lorem Ipsum'),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({super.key, required this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _fontSize = 24;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: _fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _fontSize += 2;
            });
          },
          child: const Text('Perbesar'),
        ),
      ],
    );
  }
}
