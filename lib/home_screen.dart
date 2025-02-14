import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SHOP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 2,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline, color: Colors.black),
            ),
          ],
        ),
        body: Column(
          children: [
            // 🔹 แถบค้นหา
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Find products",
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),

            // 🔹 เมนูเลือกหมวด (Women, Men, Kids)
             Padding(
              padding: const EdgeInsets.only(left: 16), // ให้ชิดซ้าย
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // ชิดซ้าย
                children: [
                  _categoryButton("WOMEN"),
                  _categoryButton("MEN"),
                  _categoryButton("KIDS"),
                ],
              ),
            ),

            // 🔹 แบนเนอร์โปรโมชั่น
            Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/adidasphoto.webp',                 
                ),
                  ]
                  ),
                ),
              ),
            ),

            // 🔹 รายการหมวดสินค้า
            Expanded(
              child: ListView(
                children: const [
                  _categoryTile(Icons.directions_run, "SHOES"),
                  _categoryTile(Icons.checkroom, "CLOTHING"),
                  _categoryTile(Icons.watch, "ACCESSORIES"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget ปุ่มหมวดหมู่
  Widget _categoryButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// Widget รายการหมวดหมู่
class _categoryTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const _categoryTile(this.icon, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 30),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}
