import 'package:clean_arch_project/domain/entities/employee.dart';

abstract interface class EmployeeRepository {
  Future<List<Employee>> fetchAll();
}
