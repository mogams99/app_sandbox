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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'mainAxisAlignment: spaceEvenly',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Icon(Icons.share),
              const Icon(Icons.thumb_up),
              const Icon(Icons.thumb_down),
            ],
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'mainAxisAlignment: spaceAround',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Icon(Icons.share),
              const Icon(Icons.thumb_up),
              const Icon(Icons.thumb_down),
            ],
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'mainAxisAlignment: spaceBetween',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Icon(Icons.share),
              const Icon(Icons.thumb_up),
              const Icon(Icons.thumb_down),
            ],
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'mainAxisAlignment: start',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Icon(Icons.share),
              const SizedBox(width: 20),
              const Icon(Icons.thumb_up),
              const SizedBox(width: 20),
              const Icon(Icons.thumb_down),
            ],
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'mainAxisAlignment: center',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.share),
              const SizedBox(width: 20),
              const Icon(Icons.thumb_up),
              const SizedBox(width: 20),
              const Icon(Icons.thumb_down),
            ],
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'mainAxisAlignment: end',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Icon(Icons.share),
              const SizedBox(width: 20),
              const Icon(Icons.thumb_up),
              const SizedBox(width: 20),
              const Icon(Icons.thumb_down),
            ],
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Widget Column',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: <Widget>[
              const Text(
                'Title 1',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Text('Lorem ipsum dolor sit amet'),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
