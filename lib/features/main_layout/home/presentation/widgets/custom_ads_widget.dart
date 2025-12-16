import 'dart:async';

import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdsWidget extends StatelessWidget {
  final List<String> adsImages;
  final int currentIndex;
  final Timer timer;

  const CustomAdsWidget({
    super.key,
    required this.adsImages,
    required this.currentIndex,
    required this.timer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p16,
        right: AppPadding.p16,
        top: 9,
      ),
      child: Stack(
        children:[
          AnimatedSwitcher(
            duration:const Duration(milliseconds: 1500),
            child: Image.asset(
              adsImages[currentIndex],
              fit: BoxFit.cover,
              width: double.infinity,
              key: ValueKey<int>(currentIndex),
            ),
        ),
          SizedBox(
            height: 220.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: adsImages.map((image) {
                int index = adsImages.indexOf(image);
                return Container(
                  width: 15.w,
                  height: 13.h,
                  margin: EdgeInsets.symmetric(
                    horizontal: 6.0.w,
                    vertical: 30.h,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? ColorManager.primary
                        : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ),
      ]),
    );
  }
}
