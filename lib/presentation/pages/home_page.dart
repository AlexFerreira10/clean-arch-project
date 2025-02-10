import 'package:clean_arch_project/core/app_color.dart';
import 'package:clean_arch_project/core/app_constants.dart';
import 'package:clean_arch_project/presentation/pages/my_team.dart';
import 'package:clean_arch_project/presentation/providers/employee_notifier.dart';
import 'package:clean_arch_project/presentation/widgets/employee_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employeeList = ref.watch(employeeNotifierProvider);

    return employeeList.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
      data: (employees) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Team Management", style: AppConstants.lightBold),
            centerTitle: true,
            backgroundColor: AppColors.detailsDark,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: MyTeam(),
                    ),
                  );
                },
                icon: Icon(Icons.group_add),
                color: AppColors.background,
              ),
            ],
          ),
          body: ListView.builder(
            padding: const EdgeInsets.all(30.0),
            itemCount: employees.length,
            itemBuilder: (context, index) {
              final employee = employees[index];
              return Column(
                children: [
                  EmployeeProfile(
                    firstName: employee.firstName,
                    lastName: employee.lastName,
                    id: employee.id.toString(),
                    avatarUrl: employee.avatar,
                    email: employee.email,
                  ),
                  SizedBox(height: 10),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
