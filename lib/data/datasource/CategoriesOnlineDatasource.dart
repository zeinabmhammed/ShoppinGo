import 'package:ecommerce/domain/model/category.dart';

abstract class CategoriesOnlineDataSource {
  Future<List<Category>> getCategories();
}
