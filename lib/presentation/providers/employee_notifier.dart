import 'package:clean_arch_project/domain/entities/employee.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EmployeeProvider extends StateNotifier<AsyncValue<List<Employee>>> {
  EmployeeProvider() : super(const AsyncValue.loading());

  Future<void> fetchEmployees() async {
    try {
      final response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        final List<dynamic> employeesData = data['data'];

        final List<Employee> employees = employeesData.map((json) => Employee.fromJson(json)).toList();

        state = AsyncValue.data(employees);
      } else {
        state = AsyncValue.error('Failed to load employees', StackTrace.current);
      }
    } catch (e) {
      state = AsyncValue.error(e.toString(), StackTrace.current);
    }
  }
}

final employeeProvider = StateNotifierProvider<EmployeeProvider, AsyncValue<List<Employee>>>((ref) {
  return EmployeeProvider()..fetchEmployees();
});
