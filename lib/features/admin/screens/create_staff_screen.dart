import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livingease/common/app_bar.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/custom_text_field.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/features/auth/widgets/custom_button.dart';
import 'package:livingease/theme/colors.dart';
import 'package:livingease/theme/text_theme.dart';

class CreateStaffScreen extends StatefulWidget {
  const CreateStaffScreen({super.key});

  @override
  State<CreateStaffScreen> createState() => _CreateStaffScreenState();
}

class _CreateStaffScreenState extends State<CreateStaffScreen> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController jobRole = TextEditingController();

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    firstName.dispose();
    lastName.dispose();
    phone.dispose();
    jobRole.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Create Staff"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage(AppConstants.createStaff),
                    height: 60,
                    width: 60,
                  ),
                ),
                heightSpacer(10),
                Text(
                  "Username",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                    ),
                  ),
                  inputHint: "Enter your username",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username is required!";
                    }
                    return null;
                  },
                ),
                heightSpacer(5),
                Text(
                  "Password",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                    ),
                  ),
                  inputHint: "Enter your password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password is required!";
                    }
                    return null;
                  },
                ),
                heightSpacer(5),
                Text(
                  "First Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                    ),
                  ),
                  inputHint: "Enter your first name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email is required!";
                    }
                    return null;
                  },
                ),
                heightSpacer(5),
                Text(
                  "Last Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                    ),
                  ),
                  inputHint: "Enter your last name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Last Name is required!";
                    }
                    return null;
                  },
                ),
                heightSpacer(5),
                Text(
                  "Phone number",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                    ),
                  ),
                  inputHint: "Enter your phone number",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Phone number is required!";
                    }
                    return null;
                  },
                ),
                heightSpacer(5),
                Text(
                  "Email",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                    ),
                  ),
                  inputHint: "Enter your email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email is required!";
                    }
                    return null;
                  },
                ),
                heightSpacer(5),
                Text(
                  "Job Role",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                    ),
                  ),
                  inputHint: "Enter your job role",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Job role is required!";
                    }
                    return null;
                  },
                ),
                heightSpacer(25),
                CustomButton(
                  buttonText: 'Create Staff',
                  buttonColor: Colors.white,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const HomeScreen(),
                    //   ),
                    // );
                  },
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
