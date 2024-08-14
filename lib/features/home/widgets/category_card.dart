import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livingease/common/spacing.dart';

class CategoryCard extends StatelessWidget {
  final String category;
  final String image;
  final double imageWidth;
  final double imageHeight;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.category,
    required this.image,
    this.imageWidth = 70.0,
    this.imageHeight = 70.0,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          // shadows: [
          //   BoxShadow(
          //     color: Color.fromARGB(255, 0, 0, 0),
          //     blurRadius: 0.5,
          //     offset: Offset(1, 1),
          //     spreadRadius: 0,
          //   ),
          // ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: imageHeight.h, // Use imageHeight
              width: imageWidth.w, // Use imageWidth
              child: Image.asset(
                image,
                fit: BoxFit.contain, // Ensure the image scales properly
              ),
            ),
            heightSpacer(10),
            Text(
              category,
              textAlign: TextAlign.center,
              style: TextStyle(
                // color: AppColors.kIndianYellow,
                fontSize: 15.sp,
              ),
            ),
            heightSpacer(10),
          ],
        ),
      ),
    );
  }
}
