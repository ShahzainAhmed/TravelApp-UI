import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/data/constants/app_colors.dart';
import 'package:travel_app/app/data/constants/app_typography.dart';
import 'package:travel_app/app/models/card_model.dart';

class VerticalDetailsCard extends StatelessWidget {
  final CardModel card;
  final VoidCallback onTap;
  const VerticalDetailsCard(
      {super.key, required this.card, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 100.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.kGreyColor.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 4),
              ),
            ],
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 100.h,
                  width: 75.w,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                      image: AssetImage(card.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  card.tour,
                  style: AppTypography.kBold20
                      .copyWith(color: AppColors.kBlackColor),
                ),
                subtitle: Text(
                  card.date,
                  style: AppTypography.kMedium16
                      .copyWith(color: AppColors.kGreyColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
