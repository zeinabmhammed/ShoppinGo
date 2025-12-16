import 'package:ecommerce/data/datasource/BrandsOnlineDataSource.dart';
import 'package:ecommerce/domain/model/Brand.dart';
import 'package:ecommerce/domain/repos/BrandsRepo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BrandsRepo)
class BrandsRepoImpl implements BrandsRepo {
  BrandsOnlineDataSource dataSource;
  BrandsRepoImpl(this.dataSource);
  @override
  Future<List<Brand>> getBrands() {
    return dataSource.getBrands();
  }
}
