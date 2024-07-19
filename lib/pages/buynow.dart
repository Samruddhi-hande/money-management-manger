import 'package:expense/pages/Product.dart';
import 'package:flutter/material.dart';

class BuyNowPage extends StatelessWidget {
  final Product product;

  const BuyNowPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Display product image
            Image.network(
              product.imageUrl,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            // Display product details
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              product.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            // Buy Now button
            ElevatedButton(
              onPressed: () {
                // Implement purchase logic here
                // For example, navigate to a confirmation screen
                Navigator.pushNamed(context, '/confirmation', arguments: product);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}