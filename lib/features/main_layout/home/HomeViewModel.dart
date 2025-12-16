import 'package:ecommerce/domain/repos/BrandsRepo.dart';
import 'package:ecommerce/domain/repos/CategoriesRepo.dart';
import 'package:ecommerce/domain/useCase/GetBrandsUsecase.dart';
import 'package:ecommerce/domain/useCase/GetCategoriesUsecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel {
  GetCategoriesUseCase getCategoriesUseCase;
  GetBrandsUseCase getBrandsUseCase;

  HomeViewModel(this.getCategoriesUseCase, this.getBrandsUseCase);

  // di
  // constructor injection
  void getCategories() async {
    // library to inject dependancies -> boiler plate code
    var categories = await getCategoriesUseCase.getCategories();
  }
  void getBrands() async {
    // library to inject dependancies -> boiler plate code
    var brands = await getBrandsUseCase.getBrands();
  }
}
