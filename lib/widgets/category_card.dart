import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.categoryName, required this.categoryIcon});
  final String categoryName;
  final IconData categoryIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        //category Icon and category name.
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                categoryIcon,
                size: 32,
                color: const Color(0xff2c41ff),
              ),
              // fail safe for category name incase it got too long
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  categoryName,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
