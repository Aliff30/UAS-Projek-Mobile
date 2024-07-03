import 'package:flutter/material.dart';

class Product {
  final String name;
  final String price;
  final String imagePath; // Tambahkan field untuk path gambar

  Product({required this.name, required this.imagePath, required this.price});
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle navigation to category detail page
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              product.name,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
              softWrap: true,
            ),
            SizedBox(height: 12),
            Text(
              product.price,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
