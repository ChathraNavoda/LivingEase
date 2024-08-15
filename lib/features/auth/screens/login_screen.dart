import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/custom_text_field.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/features/auth/screens/register_screen.dart';
import 'package:livingease/features/auth/widgets/custom_button.dart';
import 'package:livingease/features/home/screens/home_screen.dart';
import 'package:livingease/theme/colors.dart';
import 'package:livingease/theme/text_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    AppConstants.logo,
                    height: 250.h,
                  ),
                ),
                heightSpacer(30),
                Text(
                  "Login to your account",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xff333333),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                heightSpacer(25),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      width: 1,
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
                heightSpacer(30),
                CustomTextField(
                  controller: password,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: AppColors.kIndianYellow,
                      width: 1,
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
                heightSpacer(30),
                CustomButton(
                  buttonText: 'Login',
                  buttonColor: Colors.white,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print("Validated!");
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  size: 16,
                ),
                heightSpacer(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    widthSpacer(5),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Register",
                        style: AppTextTheme.kLabelStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.kIndianYellow,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
