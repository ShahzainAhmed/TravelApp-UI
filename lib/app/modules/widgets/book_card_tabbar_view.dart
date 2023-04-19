import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app/app/data/constants/app_colors.dart';
import 'package:travel_app/app/data/constants/app_typography.dart';
import 'package:travel_app/app/models/card_model.dart';
import 'package:travel_app/app/modules/detail_screen/detail_screen.dart';
import 'package:travel_app/app/modules/home/components/details_card.dart';
import 'package:travel_app/app/modules/home/components/vertical_details_card.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 40.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            "${cardList.length} Sights",
            style: AppTypography.kBold16.copyWith(color: AppColors.kGreyColor),
          ),
          SizedBox(
            height: 400.h,
            width: double.maxFinite,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              separatorBuilder: (context, index) => SizedBox(width: 30.w),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return DetailsCard(
                  card: cardList[index],
                  onTap: () =>
                      Get.to(() => DetailScreen(card: cardList[index])),
                );
              },
            ),
          ),
          Text(
            "Popular",
            style: AppTypography.kBold20.copyWith(color: AppColors.kBlackColor),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: Get.height,
            width: double.maxFinite,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemCount: cardList.length,
              itemBuilder: (context, index) {
                return VerticalDetailsCard(
                  card: cardList[index],
                  onTap: () =>
                      Get.to(() => DetailScreen(card: cardList[index])),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
