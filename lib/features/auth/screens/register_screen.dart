import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/custom_text_field.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/features/auth/widgets/custom_button.dart';
import 'package:livingease/theme/colors.dart';
import 'package:livingease/theme/text_theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String? selectedBlock;
  String? selectedRoom;

  List<String> blockOptions = ['A', 'B'];
  List<String> roomOptionA = ['101', '102', '103'];
  List<String> roomOptionB = ['201', '202', '203'];

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    firstName.dispose();
    lastName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpacer(20),
                Center(
                  child: Image.asset(
                    AppConstants.logo,
                    height: 150.h,
                    width: 150.w,
                  ),
                ),
                heightSpacer(20),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Register your account",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w700,
                    ),
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
                      color: Color(0xffd1d8ff),
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
                heightSpacer(15),
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
                heightSpacer(15),
                Text(
                  "Last Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
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
                heightSpacer(15),
                Text(
                  "Email",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
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
                heightSpacer(15),
                Row(
                  children: [
                    Container(
                      height: 50.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xFFDBAD5F),
                          ),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          widthSpacer(20),
                          const Text('Block No.'),
                          widthSpacer(8),
                          DropdownButton(
                              value: selectedBlock,
                              items: blockOptions.map((String block) {
                                return DropdownMenuItem(
                                  value: block,
                                  child: Text(block),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedBlock = newValue;
                                  selectedRoom = null;
                                });
                              }),
                          widthSpacer(20),
                        ],
                      ),
                    ),
                    widthSpacer(20),
                    Container(
                      height: 50.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xFFDBAD5F),
                          ),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          widthSpacer(20),
                          const Text('Room No.'),
                          widthSpacer(8),
                          DropdownButton<String>(
                              value: selectedRoom,
                              items: (selectedBlock == "A"
                                      ? roomOptionA
                                      : roomOptionB)
                                  .map((String room) {
                                return DropdownMenuItem<String>(
                                  value: room,
                                  child: Text(room),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedRoom = newValue;
                                });
                              }),
                          widthSpacer(20),
                        ],
                      ),
                    ),
                  ],
                ),
                heightSpacer(25),
                CustomButton(
                  buttonText: 'Register',
                  buttonColor: Colors.white,
                  onTap: () {
                    print(selectedBlock);
                    print(selectedRoom);
                    if (_formKey.currentState!.validate()) {}
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
