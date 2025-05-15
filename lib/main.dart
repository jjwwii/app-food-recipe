import 'package:app_food_recipe/core/widgets/button.dart';
import 'package:app_food_recipe/core/widgets/custom_text_field.dart';
import 'package:app_food_recipe/core/widgets/filter_button.dart';
import 'package:app_food_recipe/core/widgets/height_and_width.dart';
import 'package:app_food_recipe/presentation/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

import 'core/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: "Poppins"),
      home: const SignInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Components",
          style: AppTextStyles.largeTextBold,
        ),
      ),
      body: Column(
        children: [
          Button.big(
            "Big Button",
            onPressed: () {
              print("Big Button");
            },
          ),
          const Height(10),
          Button.medium(
            "Medium Button",
            onPressed: () {
              print("Medium Button");
            },
          ),
          const Height(10),
          Button.small(
            "Small Button",
            onPressed: () {
              print("Small Button");
            },
          ),
          const Height(10),
          const CustomTextField(label: "Label", hintText: "hintText"),
          const Height(10),
          const FilterButton(text: "test1",),
          const Height(10),
          const FilterButton(text: "test2", isSelected: true,),
          const Height(10),
        ],
      ),
    );
  }
}
