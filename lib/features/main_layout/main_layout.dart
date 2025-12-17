import 'package:ecommerce/core/resources/assets_manager.dart';
import 'package:ecommerce/features/main_layout/categories/categories_tab.dart';
import 'package:ecommerce/features/main_layout/favorites/favourite_screen.dart';
import 'package:ecommerce/features/main_layout/home/home_tab.dart';
import 'package:ecommerce/features/main_layout/profile_tab/profile_tab.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentIndex = 0;

  final List<Widget> tabs = const [
    HomeTab(),
    CategoriesTab(),
    FavoriteScreen(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(38),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(IconsAssets.icHome, 0),
            buildNavItem(IconsAssets.icCategory, 1),
            buildNavItem(IconsAssets.icWithList, 2),
            buildNavItem(IconsAssets.icProfile, 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(String iconPath, int index) {
    bool isActive = currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: isActive
          ? CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: ImageIcon(AssetImage(iconPath), color: Colors.black),
            )
          : ImageIcon(AssetImage(iconPath), color: Colors.white70, size: 25),
    );
  }
}
