import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomSectionBar extends StatelessWidget {
  final String sectionName;
  final Function function;
  const CustomSectionBar(
      {super.key, required this.sectionName, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionName,
            style: getMediumStyle(
              fontSize: 19,
              color: ColorManager.darkBlue,
            ),
          ),
          TextButton(
            onPressed: () {
              function();
            },
            child: Text(
              'view all',
              style: getRegularStyle(color: ColorManager.darkBlue),
            ),
          ),

        ],
      ),
    );
  }
}