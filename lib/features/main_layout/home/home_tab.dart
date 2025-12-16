import 'package:ecommerce/core/di/di.dart';
import 'package:ecommerce/core/resources/assets_manager.dart';
import 'package:ecommerce/features/main_layout/home/HomeViewModel.dart';
import 'package:ecommerce/features/main_layout/home/presentation/widgets/custom_ads_widget.dart';
import 'package:ecommerce/features/main_layout/home/presentation/widgets/custom_brand_widget.dart';
import 'package:ecommerce/features/main_layout/home/presentation/widgets/custom_category_widget.dart';
import 'package:ecommerce/features/main_layout/home/presentation/widgets/custom_section_bar.dart';
import 'package:flutter/material.dart';
import 'dart:async' ;

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widget/home_screen_app_bar.dart';


class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;
  late Timer _timer;

  final List<String> adsImages = [
    ImageAssets.carouselSlider1,
    ImageAssets.carouselSlider2,
    ImageAssets.carouselSlider3,
  ];

  //MANUAL DI Injection
  HomeViewModel homeViewModel = getIt.get<HomeViewModel>();

  @override
  void initState() {
    super.initState();
    _startImageSwitching();
    homeViewModel.getCategories();
    homeViewModel.getBrands();
  }
  void _startImageSwitching() {
    _timer = Timer.periodic(const Duration(milliseconds: 2500), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % adsImages.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const HomeScreenAppBar(),
      body:   SingleChildScrollView(
          child: Column(
            children: [
              CustomAdsWidget(
                  adsImages: adsImages,
                  currentIndex: _currentIndex,
                  timer: _timer
              ),
              CustomSectionBar(sectionName: 'Categories', function: () {}),
              SizedBox(height: 12.h),
              SizedBox(
                height: 270.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CustomCategoryWidget();
                  },
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              CustomSectionBar(sectionName: 'Brands', function: () {}),
              SizedBox(
                height: 270.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CustomBrandWidget();
                  },
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
