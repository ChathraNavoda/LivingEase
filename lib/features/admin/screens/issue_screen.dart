import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livingease/common/app_bar.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/theme/colors.dart';
import 'package:livingease/theme/text_theme.dart';

class IssueScreen extends StatefulWidget {
  const IssueScreen({super.key});

  @override
  State<IssueScreen> createState() => _IssueScreenState();
}

class _IssueScreenState extends State<IssueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Tenants Issues"),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 7,
        itemBuilder: (context, index) {
          return IssueCard(
            key: ValueKey(index),
          );
        },
      ),
    );
  }
}

class IssueCard extends StatelessWidget {
  const IssueCard({super.key});

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
                // gradient: const LinearGradient(
                //   begin: Alignment(0.00, -2.00),
                //   end: Alignment(0, 1),
                //   colors: [
                //     // const Color(0xFFDBAD5F).withOpacity(0.1),
                //     Color(0xFFB4EBDD),
                //     Colors.white,
                //     Colors.white,
                //   ],
                // ),
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
                      // Wrapping with Expanded to handle overflow
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
                          Text(
                            "Floor Number: 03",
                            style: TextStyle(fontSize: 14.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                          heightSpacer(10),
                          Text(
                            "Apartment Number: 04",
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
                                    "Issue: ",
                                    style: AppTextTheme.kLabelStyle.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Bathroom",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              heightSpacer(12),
                              Row(
                                children: [
                                  Text(
                                    "Tenant Comment: ",
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
                                mainAxisAlignment: MainAxisAlignment.end,
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
                                          // Add this line for the black border
                                          color: Colors.black
                                              .withOpacity(0.1), // Border color
                                          width: 2.0, // Border width
                                        ),

                                        // color: Colors.blue.shade300,
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
