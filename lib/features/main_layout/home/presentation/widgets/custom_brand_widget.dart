import 'package:ecommerce/core/resources/assets_manager.dart';
import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBrandWidget extends StatelessWidget {
  const CustomBrandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100.r),
          child: Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              ImageAssets.brandHomeImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text("Brands ",
        style: getRegularStyle(color: ColorManager.darkBlue, fontSize: 14.sp),
          ),

      ],
    );
  }
}
