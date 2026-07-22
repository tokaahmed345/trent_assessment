import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color iconColor;

  const CircleIconButton({
    required this.icon,
    required this.onTap,
    this.iconColor = AppColors.blackColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 18,
        backgroundColor: AppColors.whiteColor,
        child: Icon(icon, size: 16, color: iconColor),
      ),
    );
  }
}
