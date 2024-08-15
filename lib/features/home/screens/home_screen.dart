import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/features/admin/screens/create_staff_screen.dart';
import 'package:livingease/features/admin/screens/staff_display_screen.dart';
import 'package:livingease/features/home/widgets/category_card.dart';
import 'package:livingease/features/tenants/screens/create_issue_screen.dart';
import 'package:livingease/theme/colors.dart';
import 'package:livingease/theme/text_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: AppTextTheme.kLabelStyle.copyWith(fontSize: 22.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: InkWell(
              borderRadius: BorderRadius.circular(30.0),
              onTap: () {},
              child: SizedBox(
                width: 30.0,
                height: 30.0,
                child: SvgPicture.asset(AppConstants.profile),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          children: [
            heightSpacer(20),
            Container(
              height: 140.h,
              width: double.maxFinite,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 2,
                    color: AppColors.kIndianYellow,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(2),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chathra Navoda",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 24.sp,
                          ),
                        ),
                        heightSpacer(15),
                        Text(
                          "Room No: 201",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          "Block No: B",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateIssueScreen(),
                                ),
                              );
                            },
                            child: SvgPicture.asset(
                              AppConstants.createIssue,
                              width: 50.0,
                              height: 30.0,
                            ),
                          ),
                          Text(
                            "Create Issue",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            heightSpacer(30),
            Container(
              width: double.maxFinite,
              color: AppColors.kIndianYellowLight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpacer(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  heightSpacer(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        category: "Room\nAvailability",
                        image: AppConstants.roomAvailability,
                        imageWidth: 50.0,
                        imageHeight: 50.0,
                        onTap: () {},
                      ),
                      CategoryCard(
                        category: "All\nIssues",
                        image: AppConstants.allIssues,
                        imageWidth: 80.0,
                        imageHeight: 50.0,
                        onTap: () {},
                      ),
                      CategoryCard(
                        category: "Staff\nMembers",
                        image: AppConstants.staffMember,
                        imageWidth: 50.0,
                        imageHeight: 50.0,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StaffDisplayScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  heightSpacer(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        category: "Create\nStaff",
                        image: AppConstants.createStaff,
                        imageWidth: 70.0,
                        imageHeight: 50.0,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateStaffScreen(),
                            ),
                          );
                        },
                      ),
                      CategoryCard(
                        category: "Monthly\nRent",
                        image: AppConstants.hostelFee,
                        imageWidth: 80.0,
                        imageHeight: 50.0,
                        onTap: () {},
                      ),
                      CategoryCard(
                        category: "Change\nRequest",
                        image: AppConstants.roomChange,
                        imageWidth: 80.0,
                        imageHeight: 50.0,
                        onTap: () {},
                      ),
                    ],
                  ),
                  heightSpacer(20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
