import 'dart:convert';

import 'package:clean_arch_project/data/datasource/employee_data_source.dart';
import 'package:clean_arch_project/domain/entities/employee.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@Injectable(as: EmployeeDataSource)
class EmployeeDataSourceImpl implements EmployeeDataSource {
  final String baseUrl = 'https://reqres.in';

  @override
  Future<List<Employee>> fetchAll({required Map<String, String> headers}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/users?page=2'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'];
      return List<Employee>.from(
        data.map((json) => Employee.fromJson(json)),
      );
    } else {
      throw Exception('Failed to load employees');
    }
  }
}
