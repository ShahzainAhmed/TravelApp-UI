import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/app/data/constants/app_assets.dart';
import 'package:travel_app/app/data/constants/app_colors.dart';
import 'package:travel_app/app/data/constants/app_typography.dart';
import 'package:travel_app/app/models/card_model.dart';

import '../../widgets/stars_widget.dart';

class DetailsCard extends StatelessWidget {
  final CardModel card;
  final VoidCallback onTap;
  const DetailsCard({super.key, required this.card, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300.w,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.kGreyColor.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(25.r),
          image: DecorationImage(
            image: AssetImage(card.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20.h,
              right: 25.w,
              child: CircleAvatar(
                backgroundColor: AppColors.kWhiteColor,
                child: SvgPicture.asset(AppAssets.kSave),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const MyStarsWidget(),
                  Text(
                    card.name,
                    style: AppTypography.kBold32.copyWith(
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
