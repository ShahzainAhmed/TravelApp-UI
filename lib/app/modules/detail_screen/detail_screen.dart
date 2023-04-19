import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travel_app/app/data/constants/app_colors.dart';
import 'package:travel_app/app/data/constants/app_typography.dart';
import 'package:travel_app/app/models/card_model.dart';
import 'package:travel_app/app/modules/widgets/stars_widget.dart';

import '../../data/constants/app_assets.dart';

class DetailScreen extends StatefulWidget {
  final CardModel card;

  const DetailScreen({super.key, required this.card});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ios_share),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: Get.height / 2.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.card.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  const MyStarsWidget(),
                  Padding(
                    padding: EdgeInsets.only(right: 150.w),
                    child: Text(
                      widget.card.name,
                      style: AppTypography.kBold32
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  ),
                  SizedBox(height: 80.h)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(top: 30.h),
              height: Get.height / 1.9.h,
              decoration: BoxDecoration(
                color: AppColors.kBackgroundColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Newhaven Lighthouse in Edinburgh, United Kingdom",
                      style: AppTypography.kMedium22,
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Text(
                          "Available: ",
                          style: AppTypography.kMedium20
                              .copyWith(color: AppColors.kGreyColor),
                        ),
                        Expanded(
                            child: Text("10-00 - 18:00",
                                style: AppTypography.kMedium20)),
                        CircleAvatar(
                          radius: 3.r,
                          backgroundColor: AppColors.kGreyColor,
                        ),
                        SizedBox(width: 10.w),
                        Text("Mon - Sat", style: AppTypography.kMedium20),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Text(
                          "Duration:",
                          style: AppTypography.kMedium20
                              .copyWith(color: AppColors.kGreyColor),
                        ),
                        SizedBox(width: 18.w),
                        Text("4 hours", style: AppTypography.kMedium20),
                        SizedBox(width: 18.w),
                        Text(
                          "Price:",
                          style: AppTypography.kMedium20
                              .copyWith(color: AppColors.kGreyColor),
                        ),
                        SizedBox(width: 18.w),
                        Text("\$20", style: AppTypography.kMedium20),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      child: Slider(
                        inactiveColor: AppColors.kBlueColor.withOpacity(0.5),
                        activeColor: AppColors.kBlueColor,
                        thumbColor: AppColors.kBlueColor,
                        value: _sliderValue,
                        min: 0,
                        max: 100,
                        divisions: 10,
                        label: '$_sliderValue',
                        onChanged: (newValue) {
                          setState(() {
                            _sliderValue = newValue;
                          });
                        },
                      ),
                    ),
                    Text(
                      "3 persons",
                      style: AppTypography.kMedium16
                          .copyWith(color: AppColors.kGreyColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total: \$60", style: AppTypography.kBold26),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 30.h),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.r)),
                                backgroundColor: AppColors.kBlueColor),
                            onPressed: () {},
                            child: Text(
                              "Book now",
                              style: AppTypography.kBold18,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 390.h,
            right: 50.w,
            child: CircleAvatar(
              radius: 35.r,
              backgroundColor: AppColors.kWhiteColor,
              child: SizedBox(
                height: 30.h,
                width: 30.w,
                child: SvgPicture.asset(AppAssets.kSave),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
