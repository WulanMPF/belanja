import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widget/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Sugar',
        price: 5000,
        imagePath: 'assets/sugar.png',
        stock: 10,
        rating: 5,
        description: 'Sweet and crystalline substance used in cooking and baking.',
      ),
      Item(
        name: 'Salt',
        price: 2000,
        imagePath: 'assets/salt.png',
        stock: 15,
        rating: 4.0,
        description: 'Essential mineral for human health, used for seasoning.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ItemWidget(item: item); // Menggunakan widget ItemWidget
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            '2241720174-Wulan Maulidya P. F',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
