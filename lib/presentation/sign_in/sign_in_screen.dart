import 'package:app_food_recipe/core/constants/constants.dart';
import 'package:app_food_recipe/core/widgets/custom_text_field.dart';
import 'package:app_food_recipe/core/widgets/height_and_width.dart';
import 'package:app_food_recipe/core/widgets/social_login_button.dart';
import 'package:app_food_recipe/presentation/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                const Height(50),
                const Text(
                  "Hello,",
                  style: AppTextStyles.headerTextBold,
                ),
                const Text(
                  "Welcome Back!",
                  style: AppTextStyles.largeTextRegular,
                ),
                const Height(57),
                const CustomTextField(label: "Email", hintText: "Enter Email"),
                const Height(30),
                const CustomTextField(
                    label: "Enter Password", hintText: "Enter Password"),
                const Height(20),
                Text(
                  "Forgot Password?",
                  style: AppTextStyles.smallerTextRegular.copyWith(
                    color: AppColors.secondary100,
                  ),
                ),
                const Height(25),
                Button.big("Sing In", onPressed: () {}),
                const Height(20),
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
                const Height(55),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
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
                        "Sign up",
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
