import 'package:clean_arch_project/core/app_color.dart';
import 'package:clean_arch_project/core/app_constants.dart';
import 'package:clean_arch_project/presentation/widgets/employee_profile.dart';
import 'package:flutter/material.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({super.key});

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  @override
  Widget build(BuildContext context) {
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
            children: [
              EmployeeProfile(
                firstName: 'John',
                lastName: 'Doe',
                id: '123',
                avatarUrl: 'https://example.com/avatar.jpg',
                email: 'john.doe@example.com',
              ),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
