import 'package:ecommerce/api/api_manger.dart';
import 'package:ecommerce/data/datasource/BrandsOnlineDataSource.dart';
import 'package:ecommerce/domain/model/Brand.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BrandsOnlineDataSource)
class BrandsDataSourceImpl implements  BrandsOnlineDataSource{
  ApiManager apiManager;
  BrandsDataSourceImpl(this.apiManager);

  @override
  Future<List<Brand>> getBrands() async{
    var response =  await apiManager.getBrands();
    return response.data?.map((brandDto) => brandDto.toBrand(),).toList() ?? [];
  }
}
