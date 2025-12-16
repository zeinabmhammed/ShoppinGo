import 'package:ecommerce/core/resources/constants_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:ecommerce/core/widget/home_screen_app_bar.dart';
import 'package:ecommerce/features/main_layout/favorites/widgets/favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.s14.w,
              vertical: AppSize.s10.h
          ),
        // child: ListView.builder(
        //     itemCount: AppConstants.favoriteProducts.length,
        //     itemBuilder:  (context, index) {
        //       return Padding(
        //         padding: EdgeInsets.symmetric(vertical: AppSize.s12.h),
        //         child:
        //         FavouriteItem(
        //          product: AppConstants.favoriteProducts[index]
        //         ),
        //       );
        //     },
        // ),
      ),
    );
  }
}
