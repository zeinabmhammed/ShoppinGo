import 'package:ecommerce/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class HeartButton extends StatefulWidget {
  final void Function()? onTap;
  const HeartButton({super.key, required this.onTap});


  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  String heartIcon = IconsAssets.icHeart;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
