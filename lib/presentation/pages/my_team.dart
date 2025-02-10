import 'package:clean_arch_project/core/app_color.dart';
import 'package:clean_arch_project/core/app_constants.dart';
import 'package:clean_arch_project/presentation/providers/employee_notifier.dart';
import 'package:clean_arch_project/presentation/providers/employee_profile_notifier.dart';
import 'package:clean_arch_project/presentation/widgets/employee_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyTeam extends ConsumerStatefulWidget {
  const MyTeam({super.key});

  @override
  ConsumerState<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends ConsumerState<MyTeam> {
  @override
  Widget build(BuildContext context) {
    final xd = ref.watch(employeeProfileNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("My Team", style: AppConstants.lightBold),
        centerTitle: true,
        backgroundColor: AppColors.detailsDark,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(30.0),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            spacing: 10,
            children: <Widget>[
              ...xd.map(
                (employee) => EmployeeProfile(
                  id: employee.id.toString(),
                  firstName: employee.firstName,
                  lastName: employee.lastName,
                  avatarUrl: employee.avatar,
                  email: employee.email,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
