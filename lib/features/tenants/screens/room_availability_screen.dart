import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livingease/common/app_bar.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/theme/colors.dart';

class RoomAvailabilityScreen extends StatefulWidget {
  const RoomAvailabilityScreen({super.key});

  @override
  State<RoomAvailabilityScreen> createState() => _RoomAvailabilityScreenState();
}

class _RoomAvailabilityScreenState extends State<RoomAvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Room Availability"),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(10.h),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: const RoomCard(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
          bottomLeft: Radius.circular(30.r),
        ),
        border: Border.all(
          color: AppColors.kIndianYellow,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                AppConstants.bed,
                height: 70.h,
                width: 70.w,
              ),
              const Text(
                "RoomNo: 202",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          widthSpacer(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Floor: 02",
                style: TextStyle(fontSize: 16.sp),
              ),
              heightSpacer(5),
              Text(
                "Capacity: 05",
                style: TextStyle(fontSize: 16.sp),
              ),
              heightSpacer(5),
              Text(
                "Current Capacity: 05",
                style: TextStyle(fontSize: 16.sp),
              ),
              heightSpacer(5),
              Text(
                "Room Type: Triple Beds",
                style: TextStyle(fontSize: 16.sp),
              ),
              heightSpacer(5),
              Row(
                children: [
                  Text(
                    "Status",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  widthSpacer(20),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade300,
                    ),
                    child: Text(
                      "Available",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
