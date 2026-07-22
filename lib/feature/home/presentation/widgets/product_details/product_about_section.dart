import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';

class ProductAboutSection extends StatefulWidget {
  final String description;

  const ProductAboutSection({super.key, required this.description});

  @override
  State<ProductAboutSection> createState() => _ProductAboutSectionState();
}

class _ProductAboutSectionState extends State<ProductAboutSection> {
  bool _showFullDescription = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'عن المنتج',
          style: AppTextStyle.body14Medium.copyWith(
            color: context.textPrimary,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.description,
          maxLines: _showFullDescription ? null : 3,
          overflow: _showFullDescription
              ? TextOverflow.visible
              : TextOverflow.ellipsis,
          style: AppTextStyle.body12Medium.copyWith(
            color: context.textSecondary,
            height: 1.6,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: () =>
              setState(() => _showFullDescription = !_showFullDescription),
          child: Text(
            _showFullDescription ? 'عرض أقل' : 'التفاصيل الإضافية',
            style: AppTextStyle.caption10.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
