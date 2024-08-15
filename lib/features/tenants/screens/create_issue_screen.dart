import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livingease/common/app_bar.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/custom_text_field.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/features/auth/widgets/custom_button.dart';
import 'package:livingease/theme/colors.dart';
import 'package:livingease/theme/text_theme.dart';

class CreateIssueScreen extends StatefulWidget {
  const CreateIssueScreen({super.key});

  @override
  State<CreateIssueScreen> createState() => _CreateIssueScreenState();
}

class _CreateIssueScreenState extends State<CreateIssueScreen> {
  TextEditingController tenantComment = TextEditingController();
  String? selectedIssue;
  List<String> issues = [
    "Bathroom",
    "Bedroom",
    "Water",
    "Electricity",
    "Furniture",
    "Kitchen",
  ];

  @override
  void dispose() {
    tenantComment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, 'Create Issue'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 15.w,
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    AppConstants.createIssue,
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
                heightSpacer(10),
                Text(
                  "Apartment Number",
                  style: AppTextTheme.kPrimaryStyle,
                ),
                heightSpacer(5),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                        side: const BorderSide(
                          width: 1,
                          color: AppColors.kIndianYellow,
                        )),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "201",
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Floor Number",
                  style: AppTextTheme.kPrimaryStyle,
                ),
                heightSpacer(5),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.kIndianYellow,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Email",
                  style: AppTextTheme.kPrimaryStyle,
                ),
                heightSpacer(5),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.kIndianYellow,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "chathra500@gmail.com",
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Phone",
                  style: AppTextTheme.kPrimaryStyle,
                ),
                heightSpacer(5),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.kIndianYellow,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "0872905499",
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Issue",
                  style: AppTextTheme.kPrimaryStyle,
                ),
                heightSpacer(5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.kIndianYellow,
                      ),
                    ),
                  ),
                  child: DropdownButton(
                      underline: const SizedBox(),
                      isExpanded: true,
                      value: selectedIssue,
                      items: issues.map((String issue) {
                        return DropdownMenuItem(
                          value: issue,
                          child: Text(issue),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedIssue = newValue;
                        });
                      }),
                ),
                heightSpacer(15),
                Text(
                  "Comment",
                  style: AppTextTheme.kPrimaryStyle,
                ),
                heightSpacer(5),
                CustomTextField(
                  controller: tenantComment,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Comment is required!";
                    }
                    return null;
                  },
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                    ),
                  ),
                ),
                heightSpacer(40),
                CustomButton(
                  buttonText: "Submit",
                  buttonColor: const Color.fromARGB(255, 255, 255, 255),
                  onTap: () {},
                  size: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
