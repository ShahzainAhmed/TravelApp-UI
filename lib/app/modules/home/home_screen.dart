import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app/app/data/constants/app_assets.dart';
import 'package:travel_app/app/data/constants/app_colors.dart';
import 'package:travel_app/app/data/constants/app_typography.dart';
import 'package:travel_app/app/modules/widgets/book_card_tabbar_view.dart';
import 'package:travel_app/app/modules/widgets/circle_tab_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90.h,
          titleSpacing: 39.w,
          title: Text(
            'Explore',
            style: AppTypography.kBold40.copyWith(color: AppColors.kBlackColor),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 30.w),
              child: Container(
                height: 45.h,
                width: 45.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: AssetImage(AppAssets.kAvatar2))),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 23.w),
                child: TabBar(
                  labelStyle: AppTypography.kBold18,
                  isScrollable: true,
                  unselectedLabelColor: AppColors.kGreyColor,
                  labelColor: AppColors.kBlueColor,
                  indicator: CircleTabIndicator(
                    color: AppColors.kBlueColor,
                    radius: 3.r,
                  ),
                  tabs: const [
                    Tab(
                      child: Text('Slights'),
                    ),
                    Tab(
                      child: Text('Tours'),
                    ),
                    Tab(
                      child: Text('Adventures'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height,
                width: double.maxFinite,
                child: const TabBarView(
                  children: [
                    MyCard(),
                    MyCard(),
                    MyCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
