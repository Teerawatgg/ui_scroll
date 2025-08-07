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
    final List<String> items = List<String>.generate(100,(i) => 'Item ${i + 1}',);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 6'),
        backgroundColor: Colors.indigo,
      ),
      // body: GridView.count(
      //   padding: EdgeInsets.all(8.0),
      //   mainAxisSpacing: 8.0,
      //   crossAxisSpacing: 8.0,
      //   crossAxisCount: 3, // 3 คอลัมน์
      //   childAspectRatio: 0.5,

      //   children: List<Widget>.generate(50, (index) {
      //     // สร้างไอเท็มตัวอย่าง 20 อัน
      //     return Container(
      //       color: Colors.teal[100 + (index % 8) * 100],
      //       child: Center(child: Text('Item $index')),
      //     );
      //   }),
      // ),
       body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          crossAxisCount: 3,
          childAspectRatio: 0.9),
          // 2 คอลัมน์
        itemCount: items.length , // ความกว้างเป็น 1.5 เท่าของความสูง
        itemBuilder: (context, index) {
          return Container(
            color: Colors.indigo[100 + (index % 6) * 100],
            child: Center(child: Text('Tile $index')),
          );
        },
      ),
    );
  }
}
