import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livingease/common/app_bar.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/theme/colors.dart';
import 'package:livingease/theme/text_theme.dart';

class AnnexChangeReqScreen extends StatefulWidget {
  const AnnexChangeReqScreen({super.key});

  @override
  State<AnnexChangeReqScreen> createState() => _AnnexChangeReqScreen();
}

class _AnnexChangeReqScreen extends State<AnnexChangeReqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Apartment Change"),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 7,
        itemBuilder: (context, index) {
          return ReqCard(
            key: ValueKey(index),
          );
        },
      ),
    );
  }
}

class ReqCard extends StatelessWidget {
  const ReqCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            heightSpacer(20),
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: AppColors.kIndianYellowLight,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        heightSpacer(20),
                        SvgPicture.asset(
                          AppConstants.profile,
                          width: 90.w,
                          height: 90.h,
                        ),
                        heightSpacer(10),
                        Text(
                          "Chathra Navoda",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    widthSpacer(20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          heightSpacer(10),
                          Text(
                            "Username: ChathraNavoda",
                            style: TextStyle(fontSize: 14.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                          heightSpacer(10),
                          Text(
                            "Current Floor: 01",
                            style: TextStyle(fontSize: 14.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                          heightSpacer(10),
                          Text(
                            "Current Apartment: 02",
                            style: TextStyle(fontSize: 14.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                          heightSpacer(10),
                          Text(
                            "Email: chathra500@gmail.com",
                            style: TextStyle(fontSize: 14.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                          heightSpacer(10),
                          Text(
                            "Phone: 0905780344",
                            style: TextStyle(fontSize: 14.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                          heightSpacer(10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 200.h,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ask for: ",
                                    style: AppTextTheme.kLabelStyle.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Apartment ",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.pink,
                                        ),
                                      ),
                                      widthSpacer(10),
                                      Text(
                                        "02",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.pink,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              heightSpacer(12),
                              Row(
                                children: [
                                  Text(
                                    "Reason: ",
                                    style: AppTextTheme.kLabelStyle.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Bathroom leakage",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              heightSpacer(20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 8,
                                      ),
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black.withOpacity(0.1),
                                          width: 2.0,
                                        ),
                                        color: const Color(0xFFB4EBDD),
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Resolve",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 8,
                                      ),
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black.withOpacity(0.1),
                                          width: 2.0,
                                        ),
                                        color: const Color.fromARGB(
                                            255, 235, 180, 180),
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Reject",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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
