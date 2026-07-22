import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';
import 'package:trent_assessment/feature/home/data/models/product_model.dart';

class ProductTitleRating extends StatelessWidget {
  final ProductModel product;
  final int reviewsCount;

  const ProductTitleRating({super.key, 
    required this.product,
    required this.reviewsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            product.title,
            style: AppTextStyle.heading18.copyWith(color: context.textPrimary),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.orangeColor.withOpacity(0.12),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Icon(Icons.star, size: 14, color: AppColors.orangeColor),
              const SizedBox(width: 4),
              Text(
                '${product.rating}',
                style: AppTextStyle.caption10.copyWith(
                  color: AppColors.orangeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '($reviewsCount تقييم)',
                style: AppTextStyle.caption10.copyWith(
                  color: context.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}