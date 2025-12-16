import 'package:ecommerce/domain/model/category.dart';

abstract class CategoriesRepo{
  Future<List<Category>> getCategories();
}