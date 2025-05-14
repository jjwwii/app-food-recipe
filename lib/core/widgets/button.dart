import 'package:app_food_recipe/core/constants/app_defines.dart';
import 'package:app_food_recipe/core/constants/constants.dart';
import 'package:app_food_recipe/core/widgets/height_and_width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Button extends StatefulWidget {
  const Button.big(
    this.title, {
    super.key,
    this.height = 60,
    required this.onPressed,
    this.isSmall = false,
  });

  const Button.medium(
    this.title, {
    super.key,
    this.height = 54,
    required this.onPressed,
    this.isSmall = false,
  });

  const Button.small(
    this.title, {
    super.key,
    this.height = 37,
    required this.onPressed,
    this.isSmall = true,
  });

  final double height;
  final String title;
  final VoidCallback onPressed;
  final bool isSmall;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        // widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isPressed ? AppColors.gray4 : AppColors.primary100,
        ),
        child: Row(
          children: [
            expandedBox,
            Text(
              widget.title,
              style: AppTextStyles.normalTextBold.copyWith(
                color: AppColors.white,
              ),
            ),
            Visibility(
              visible: widget.isSmall == false,
              child: Row(
                children: [
                  const Width(11),
                  SvgPicture.asset("assets/images/arrow_right.svg"),
                ],
              ),
            ),
            expandedBox,
          ],
        ),
      ),
    );
  }
}
