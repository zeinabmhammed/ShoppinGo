import 'package:ecommerce/domain/model/category.dart';
import 'package:ecommerce/domain/repos/CategoriesRepo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  CategoriesRepo categoriesRepo;
  GetCategoriesUseCase(this.categoriesRepo);

  Future<List<Category>> getCategories() {
    return categoriesRepo.getCategories();
  }
}
