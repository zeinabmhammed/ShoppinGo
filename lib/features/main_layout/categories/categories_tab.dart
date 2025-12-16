import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:ecommerce/core/widget/home_screen_app_bar.dart';
import 'package:ecommerce/features/main_layout/categories/wigdets/categories_list.dart';
import 'package:ecommerce/features/main_layout/categories/wigdets/sub_categories_list.dart';
import 'package:flutter/material.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HomeScreenAppBar(),
     body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p12,
                vertical: AppPadding.p12
            ),
          child: Row(
            children: [
              CategoriesList(),
              SizedBox(
                width: AppSize.s16,
              ),
              SubCategoriesList(),

            ],
          ),
     )
    );
  }
}
