import 'package:ecommerce/domain/api_result.dart';
import 'package:ecommerce/domain/model/auth_result.dart';
import 'package:ecommerce/domain/repos/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<Result<AuthResult>> call(
      String email,
      String password,
      ) {
    return _repository.login(email, password);
  }
}