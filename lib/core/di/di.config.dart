// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../api/api_manger.dart' as _i254;
import '../../api/datasource/BrandsOnlineDataSourceImpl.dart' as _i277;
import '../../api/datasource/CategoriesOnlineDataSourceImpl.dart' as _i369;
import '../../data/datasource/BrandsOnlineDataSource.dart' as _i65;
import '../../data/datasource/CategoriesOnlineDatasource.dart' as _i15;
import '../../data/repos/BrandsRepoImpl.dart' as _i1002;
import '../../data/repos/CategoriesRepoImpl.dart' as _i404;
import '../../domain/repos/BrandsRepo.dart' as _i120;
import '../../domain/repos/CategoriesRepo.dart' as _i374;
import '../../domain/useCase/GetBrandsUsecase.dart' as _i486;
import '../../domain/useCase/GetCategoriesUsecase.dart' as _i644;
import '../../features/main_layout/home/HomeViewModel.dart' as _i564;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i254.ApiManager>(() => _i254.ApiManager());
    gh.factory<_i15.CategoriesOnlineDataSource>(
      () => _i369.CategoriesOnlineDataSourceImpl(gh<_i254.ApiManager>()),
    );
    gh.factory<_i374.CategoriesRepo>(
      () => _i404.CategoriesRepoImpl(gh<_i15.CategoriesOnlineDataSource>()),
    );
    gh.factory<_i65.BrandsOnlineDataSource>(
      () => _i277.BrandsDataSourceImpl(gh<_i254.ApiManager>()),
    );
    gh.factory<_i644.GetCategoriesUseCase>(
      () => _i644.GetCategoriesUseCase(gh<_i374.CategoriesRepo>()),
    );
    gh.factory<_i120.BrandsRepo>(
      () => _i1002.BrandsRepoImpl(gh<_i65.BrandsOnlineDataSource>()),
    );
    gh.factory<_i486.GetBrandsUseCase>(
      () => _i486.GetBrandsUseCase(gh<_i120.BrandsRepo>()),
    );
    gh.factory<_i564.HomeViewModel>(
      () => _i564.HomeViewModel(
        gh<_i644.GetCategoriesUseCase>(),
        gh<_i486.GetBrandsUseCase>(),
      ),
    );
    return this;
  }
}
