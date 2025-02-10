import 'package:clean_arch_project/domain/entities/employee.dart';
import 'package:clean_arch_project/presentation/providers/employee_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_profile_notifier.g.dart';

@riverpod
class EmployeeProfileNotifier extends _$EmployeeProfileNotifier {
  @override
  List<Employee> build() {
    return ref.watch(employeeNotifierProvider).value
        //TODO: di config for local storage
        // TODO: .where(shared preferences contains added members)
        ??
        [];
  }

  void addEmployee(Employee employee) {
    if (!state.contains(employee)) {
      state = [...state, employee];
    }
  }

  void removeEmployee(Employee employee) {
    state = state.where((e) => e.id != employee.id).toList();
  }

  bool isEmployeeAdded(Employee employee) {
    return state.any((e) => e.id == employee.id);
  }
}
