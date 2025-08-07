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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 6'),
        backgroundColor: Colors.indigo,
      ),
      body: Stack(
        alignment:
            Alignment.center, // จัดกึ่งกลาง children ที่ไม่ได้กำหนดตำแหน่ง
        children: <Widget>[
          // วิดเจ็ตล่างสุด (วาดก่อน)
          Container(width: 200, height: 200, color: Colors.blue),
          // วิดเจ็ตกลาง
          Container(width: 150, height: 150, color: Colors.green),
          // วิดเจ็ตบนสุด (วาดสุดท้าย)
          Container(width: 100, height: 100, color: Colors.red),
          // Text ก็ถูกจัดกึ่งกลางตาม alignment เริ่มต้นด้วย
          const Text(
            'Layered',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
