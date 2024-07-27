import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livingease/common/constant.dart';
import 'package:livingease/common/custom_text_field.dart';
import 'package:livingease/common/spacing.dart';
import 'package:livingease/features/auth/widgets/custom_button.dart';

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
                      color: Color(0xffd1d8ff),
                    ),
                  ),
                  inputHint: "Enter your email",
                ),
                heightSpacer(30),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                  ),
                  inputHint: "Enter your password",
                ),
                heightSpacer(30),
                CustomButton(
                  buttonText: 'Login',
                  buttonColor: Colors.white,
                  onTap: () {},
                  size: 16,
                ),
                heightSpacer(30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
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
