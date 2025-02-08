import 'package:clean_arch_project/core/app_color.dart';
import 'package:clean_arch_project/core/app_constants.dart';
import 'package:clean_arch_project/presentation/pages/my_team.dart';
import 'package:clean_arch_project/presentation/widgets/employee_profile.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              EmployeeProfile(),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
