import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/data/constants/app_colors.dart';
import 'package:travel_app/app/data/constants/app_typography.dart';

class MyStarsWidget extends StatefulWidget {
  const MyStarsWidget({super.key});

  @override
  State<MyStarsWidget> createState() => _MyStarsWidgetState();
}

class _MyStarsWidgetState extends State<MyStarsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: AppColors.kSecondaryColor,
        ),
        const Icon(
          Icons.star,
          color: AppColors.kSecondaryColor,
        ),
        const Icon(
          Icons.star,
          color: AppColors.kSecondaryColor,
        ),
        const Icon(
          Icons.star,
          color: AppColors.kSecondaryColor,
        ),
        SizedBox(width: 3.73.w),
        Text(
          "4.0",
          style: AppTypography.kMedium20.copyWith(color: AppColors.kWhiteColor),
        ),
      ],
    );
  }
}
