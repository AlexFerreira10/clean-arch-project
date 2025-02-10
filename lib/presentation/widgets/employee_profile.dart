import 'package:clean_arch_project/core/app_color.dart';
import 'package:clean_arch_project/core/app_constants.dart';
import 'package:clean_arch_project/presentation/providers/employee_profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmployeeProfile extends ConsumerStatefulWidget {
  final String firstName;
  final String lastName;
  final String id;
  final String avatarUrl;
  final String email;

  const EmployeeProfile({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.id,
    required this.avatarUrl,
    required this.email,
  });

  @override
  ConsumerState<EmployeeProfile> createState() => _EmployeeProfileState();
}

class _EmployeeProfileState extends ConsumerState<EmployeeProfile> {
  final widthContainer = 350.0;
  final heightContainer = 330.0;
  final defaultBorderRadiusCircular = 10.0;
  late final employeeNotifier;
  String statusEmployee = "Add to Team";

  @override
  void initState() {
    super.initState();
    employeeNotifier = ref.read(employeeProfileNotifierProvider.notifier);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightContainer,
      width: widthContainer,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.all(
          Radius.circular(defaultBorderRadiusCircular),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(defaultBorderRadiusCircular),
              topRight: Radius.circular(defaultBorderRadiusCircular),
            ),
            child: Container(
              height: heightContainer * 0.55,
              width: widthContainer,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.avatarUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Divider(
            color: AppColors.detailsDark,
            thickness: 2,
            height: 1,
          ),
          Expanded(
            child: Card(
              color: AppColors.accent,
              elevation: 5,
              margin: const EdgeInsets.all(8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultBorderRadiusCircular),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '${widget.firstName} ${widget.lastName} - #${widget.id}',
                      style: TextStyle(
                        fontSize: AppConstants.fontSizeMax,
                        fontWeight: FontWeight.bold,
                        color: AppColors.inputBackground,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.email,
                      style: TextStyle(
                        fontSize: AppConstants.fontSizeMin,
                        color: AppColors.inputBackground,
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: widthContainer * 0.07,
                        width: widthContainer * 0.50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultBorderRadiusCircular),
                          color: AppColors.primary,
                        ),
                        child: Text(
                          'Add to Team',
                          style: AppConstants.light,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
