import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final Widget child;
  final bool isSelected;

  const FilterButton({
    super.key,
    required this.child,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
