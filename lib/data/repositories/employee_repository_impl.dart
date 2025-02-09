import 'package:clean_arch_project/data/datasource/employee_data_source.dart';
import 'package:clean_arch_project/domain/entities/employee.dart';
import 'package:clean_arch_project/domain/repositories/employee_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: EmployeeRepository)
class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeeDataSource _dataSource;

  EmployeeRepositoryImpl(this._dataSource);

  @override
  Future<List<Employee>> fetchAll() async {
    try {
      return await _dataSource.fetchAll(headers: {
        // 'Authorization': 'Bearer $_data',
        'Content-Type': 'application/json',
      });
    } catch (e) {
      return [];
    }
  }
}
