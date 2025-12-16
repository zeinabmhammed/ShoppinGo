import 'package:ecommerce/api/api_manger.dart';
import 'package:ecommerce/api/execute_api.dart';
import 'package:ecommerce/data/datasource/auth_remote_data_source.dart';
import 'package:ecommerce/domain/api_result.dart';
import 'package:ecommerce/domain/model/auth_result.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  ApiManager apiManager;
  AuthRemoteDataSourceImpl(this.apiManager);

  @override
  Future<Result<AuthResult>> login(email, password) => executeApi(()async{
      var response = await apiManager.login(email, password);
      return response.toEntity();
    },);
}