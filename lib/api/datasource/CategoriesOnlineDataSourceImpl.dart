import 'package:ecommerce/api/api_manger.dart';
import 'package:ecommerce/data/datasource/CategoriesOnlineDatasource.dart';
import 'package:ecommerce/domain/model/category.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesOnlineDataSource)
class CategoriesOnlineDataSourceImpl implements CategoriesOnlineDataSource{
  ApiManager apiManager;
  CategoriesOnlineDataSourceImpl(this.apiManager);

  @override
  Future<List<Category>> getCategories() async{
    var response =  await apiManager.getCategories();
    var data =  response.data?.map((catDto) => catDto.toCategory(),).toList() ?? [];
    return data;
  }
}
