import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Ensure this import is present
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (GoRouter.of(context).canPop()) {
              context.pop(); // Navigate back
            } else {
              context.go('/'); // Go to home if there's nothing to pop
            }
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: item.name,
                child: Image.asset(
                  item.imagePath,
                  fit: BoxFit.cover,
                  height: 250,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Item Name: ${item.name}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Description:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(item.description),
            const SizedBox(height: 8),
            Text(
              'Price: Rp ${item.price.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Row(
                  children: List.generate(
                    5,
                    (starIndex) => Icon(
                      Icons.star,
                      color:
                          starIndex < item.rating ? Colors.yellow : Colors.grey,
                      size: 24,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  item.rating.toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('Stock: ${item.stock}'),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
