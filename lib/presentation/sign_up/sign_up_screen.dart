import 'package:app_food_recipe/core/constants/constants.dart';
import 'package:app_food_recipe/core/widgets/custom_check_box.dart';
import 'package:app_food_recipe/core/widgets/custom_text_field.dart';
import 'package:app_food_recipe/core/widgets/height_and_width.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/button.dart';
import '../../core/widgets/social_login_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Height(10),
                const Text(
                  "Create an account",
                  style: AppTextStyles.largeTextBold,
                ),
                const Height(5),
                const Text(
                  "Let's help you set up your account,",
                  style: AppTextStyles.smallerTextRegular,
                ),
                const Text(
                  "it won't take long.",
                  style: AppTextStyles.smallerTextRegular,
                ),
                const Height(20),
                const CustomTextField(label: "Name", hintText: "Enter Name"),
                const Height(20),
                const CustomTextField(label: "Email", hintText: "Enter Email"),
                const Height(20),
                const CustomTextField(
                    label: "Password", hintText: "Enter Password"),
                const Height(20),
                const CustomTextField(
                    label: "Confirm Password", hintText: "Retype Password"),
                const Height(20),
                Row(
                  children: [
                    CustomCheckBox(isSelected:isSelected, onTap: () {}),
                    const Width(5),
                    Text(
                      "Accept terms & Condition",
                      style: AppTextStyles.smallerTextRegular.copyWith(
                        color: AppColors.secondary100,
                      ),
                    ),
                  ],
                ),
                const Height(26),
                Button.big("Sign Up", onPressed: () {}),
                const Height(14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 1,
                      color: AppColors.gray4,
                    ),
                    const Width(7),
                    Text(
                      "Or Sign in With",
                      style: AppTextStyles.smallerTextBold
                          .copyWith(color: AppColors.gray4),
                    ),
                    const Width(7),
                    Container(
                      width: 50,
                      height: 1,
                      color: AppColors.gray4,
                    ),
                  ],
                ),
                const Height(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialLoginButton(imgPath: "assets/images/google_icon.svg"),
                    Width(25),
                    SocialLoginButton(
                        imgPath: "assets/images/facebook_icon.svg"),
                  ],
                ),
                const Height(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a members?",
                      style: AppTextStyles.smallerTextBold.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const Width(5),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen())),
                      child: Text(
                        "Sign In",
                        style: AppTextStyles.smallerTextBold.copyWith(
                          color: AppColors.secondary100,
                        ),
                      ),
                    ),
                    const Height(100),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
