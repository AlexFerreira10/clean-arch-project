import 'package:clean_arch_project/domain/entities/employee.dart';
import 'package:clean_arch_project/domain/repositories/employee_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchAllEmployeeUseCase {
  final EmployeeRepository _repository;

  FetchAllEmployeeUseCase(this._repository);

  Future<List<Employee>> call() async => await _repository.fetchAll();
}
