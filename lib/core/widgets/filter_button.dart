import 'package:app_food_recipe/core/constants/constants.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final Widget? child;
  final bool isSelected;
  final String text;

  const FilterButton({
    super.key,
    this.child,
    this.isSelected = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary100),
        borderRadius: BorderRadius.circular(10),
        color: isSelected ? AppColors.primary100 : AppColors.white,
      ),
      child: Text(
        text,
        style: AppTextStyles.smallerTextRegular.copyWith(
          color: isSelected ? AppColors.white : AppColors.primary80,
        ),
      ),
    );
  }
}
