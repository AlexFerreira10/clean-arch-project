import 'package:clean_arch_project/core/app_color.dart';
import 'package:clean_arch_project/core/app_constants.dart';
import 'package:flutter/material.dart';

class EmployeeProfile extends StatefulWidget {
  const EmployeeProfile({super.key});

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
                  image: AssetImage('lib/assets/default-photo.jpg'),
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
                      'First Name + Second Name- #ID',
                      style: TextStyle(
                        fontSize: AppConstants.fontSizeMax,
                        fontWeight: FontWeight.bold,
                        color: AppColors.inputBackground,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'correaferreiraalex92@gmail.com',
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
