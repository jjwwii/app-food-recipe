import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomCheckBox extends StatefulWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CustomCheckBox({
    super.key,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isSelected = false;
  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          print(isSelected);
        });
      },
      child: Container(
        height: 17,
        width: 17,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.secondary100),
          borderRadius: BorderRadius.circular(5),
        ),
        child: isSelected ? const Icon(
          Icons.check,
          color: AppColors.secondary100,
          size: 15,
        ) : const SizedBox(),
      ),
    );
  }
}
