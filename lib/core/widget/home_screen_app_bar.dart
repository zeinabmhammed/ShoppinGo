import 'package:ecommerce/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routes_manager/routes.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? automaticallyImplyLeading;
  const HomeScreenAppBar({super.key, this.automaticallyImplyLeading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,

      title: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(
          "ShoppinGo",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 18.w),
          child: IconButton(
            onPressed: () => Navigator.pushNamed(context, Routes.cartRoute),
            icon: ImageIcon(
              AssetImage(ImageAssets.shoppingCart),
              color: Colors.black,
            ),
          ),
        ),
      ],

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Container(
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextFormField(
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black, fontSize: 16.sp),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.h,
                  horizontal: 16.w,
                ),

                hintText: "What do you search for?",
                hintStyle: TextStyle(color: Colors.black54, fontSize: 16.sp),

                prefixIcon: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: ImageIcon(
                    AssetImage(ImageAssets.searchIcon),
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120.h);
}
