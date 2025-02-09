import 'package:clean_arch_project/domain/entities/employee.dart';

abstract class EmployeeDataSource {
  Future<List<Employee>> fetchAll({required Map<String, String> headers});
}
