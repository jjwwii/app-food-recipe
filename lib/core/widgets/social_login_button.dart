import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class SocialLoginButton extends StatelessWidget {
  final String imgPath;

  const SocialLoginButton({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 3,
          )
        ],
      ),
      child: SvgPicture.asset(imgPath),
    );
  }
}
