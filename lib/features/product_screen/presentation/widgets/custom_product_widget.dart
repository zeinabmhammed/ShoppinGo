import 'package:flutter/material.dart';

class CustomProductWidget extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final double rating;

  const CustomProductWidget({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
