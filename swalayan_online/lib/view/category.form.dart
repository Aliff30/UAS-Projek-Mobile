import 'package:flutter/material.dart';

class Category {
  final String name;
  final String imagePath; // Tambahkan field untuk path gambar

  Category({required this.name, required this.imagePath});
}

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem({required this.category});

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
                  category.imagePath,
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              category.name,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
