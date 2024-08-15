import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livingease/common/app_bar.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/theme/colors.dart';
import 'package:livingease/theme/text_theme.dart';

class StaffDisplayScreen extends StatefulWidget {
  const StaffDisplayScreen({super.key});

  @override
  State<StaffDisplayScreen> createState() => _StaffDisplayScreenState();
}

class _StaffDisplayScreenState extends State<StaffDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "All Staff"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2 / 1.2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16,
            ),
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: AppColors.kIndianYellowLight,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                AppConstants.profile,
                                width: 90.w,
                                height: 90.h,
                              ),
                              heightSpacer(20),
                              Text(
                                "Admin",
                                style: AppTextTheme.kLabelStyle,
                              )
                            ],
                          ),
                          widthSpacer(20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                heightSpacer(10),
                                Text(
                                  "Name: Peter Jackson",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                heightSpacer(8),
                                Text(
                                  "Email: petrjack88@gmail.com",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                heightSpacer(8),
                                Text(
                                  "Phone: 0885902890",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: const Color(0xffec6977),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Delete",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
