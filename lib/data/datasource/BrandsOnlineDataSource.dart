import 'package:ecommerce/domain/model/Brand.dart';

abstract class BrandsOnlineDataSource {
  Future<List<Brand>> getBrands();
}