import 'package:ecommerce/data/datasource/CategoriesOnlineDatasource.dart';
import 'package:ecommerce/domain/model/category.dart';
import 'package:ecommerce/domain/repos/CategoriesRepo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesRepo)
class CategoriesRepoImpl implements CategoriesRepo {
  CategoriesOnlineDataSource onLineDataSource;
  CategoriesRepoImpl(this.onLineDataSource);// DI

  @override
  Future <List<Category>> getCategories() {
    // real implementation of abstract function of categories repo
    return onLineDataSource.getCategories();
  }
}