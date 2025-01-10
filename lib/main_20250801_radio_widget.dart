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

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              leading: Radio(
                value: 'One',
                groupValue: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                    showSnackBar();
                  });
                },
              ),
              title: const Text('One'),
            ),
            ListTile(
              leading: Radio(
                value: 'Two',
                groupValue: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                    showSnackBar();
                  });
                },
              ),
              title: const Text('Two'),
            ),
            ListTile(
              leading: Radio(
                value: 'Three',
                groupValue: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                    showSnackBar();
                  });
                },
              ),
              title: const Text('Three'),
            ),
          ],
        ));
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$selectedValue is selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
