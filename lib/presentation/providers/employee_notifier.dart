import 'package:clean_arch_project/di/di.dart';
import 'package:clean_arch_project/domain/entities/employee.dart';
import 'package:clean_arch_project/domain/usecases/employee_user_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_notifier.g.dart';

@riverpod
class EmployeeNotifier extends _$EmployeeNotifier {
  late final FetchAllEmployeeUseCase _fetchAllEmployeeUseCase;

  EmployeeNotifier() {
    _fetchAllEmployeeUseCase = getIt<FetchAllEmployeeUseCase>();
  }

  @override
  FutureOr<List<Employee>> build() async {
    await Future.delayed(Duration(seconds: 3));
    return await _fetchAllEmployeeUseCase.call();
  }
}
