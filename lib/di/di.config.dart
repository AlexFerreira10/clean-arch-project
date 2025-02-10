// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/datasource/employee_data_source.dart' as _i981;
import '../data/datasource/employee_data_source_impl.dart' as _i857;
import '../data/repositories/employee_repository_impl.dart' as _i839;
import '../domain/repositories/employee_repository.dart' as _i946;
import '../domain/usecases/employee_user_case.dart' as _i151;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i981.EmployeeDataSource>(() => _i857.EmployeeDataSourceImpl());
    gh.factory<_i946.EmployeeRepository>(
        () => _i839.EmployeeRepositoryImpl(gh<_i981.EmployeeDataSource>()));
    gh.factory<_i151.FetchAllEmployeeUseCase>(
        () => _i151.FetchAllEmployeeUseCase(gh<_i946.EmployeeRepository>()));
    return this;
  }
}
