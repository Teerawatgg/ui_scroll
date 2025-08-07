import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate( 50,(i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 6'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {

          return ListTile(
            title: Text(items[index]),
            subtitle: Text(items[index]),
            onTap: () {
              print(items[index]);
            },
          );
          
        },
      ),
    );
  }
}
