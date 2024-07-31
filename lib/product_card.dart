import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String director;
  final String image;
  final Color backgroundColor;
  const ProductCard(
      {super.key,
      required this.title,
      required this.director,
      required this.image,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(216, 240, 253, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          Text(
            '#Director',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 5),
          Image.asset(
            image,
            height: 200,
          )
        ],
      ),
    );
  }
}
