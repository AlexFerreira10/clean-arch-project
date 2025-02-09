import 'package:clean_arch_project/core/app_color.dart';
import 'package:clean_arch_project/core/app_constants.dart';
import 'package:flutter/material.dart';

class EmployeeProfile extends StatefulWidget {
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
  State<EmployeeProfile> createState() => _EmployeeProfileState();
}

class _EmployeeProfileState extends State<EmployeeProfile> {
  final widthContainer = 350.0;
  final heightContainer = 330.0;
  final defaultBorderRadiusCircular = 10.0;

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
                          'Add a Team',
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
