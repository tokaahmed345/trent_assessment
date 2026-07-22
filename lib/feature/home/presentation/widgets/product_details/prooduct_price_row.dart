
import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';
import 'package:trent_assessment/feature/home/data/models/product_model.dart';

class ProductPriceRow extends StatelessWidget {
  final ProductModel product;
  final double fontSize;

  const ProductPriceRow({super.key, required this.product, this.fontSize = 20});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '${product.price} ',
                style: AppTextStyle.price16Bold.copyWith(
                  color: context.textPrimary,
                  fontSize: fontSize,
                ),
              ),
              TextSpan(
                text: 'ر.س ',
                style: AppTextStyle.body14Medium.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '/ ${product.period}',
                style: AppTextStyle.body14Medium.copyWith(
                  color: context.textSecondary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            product.category,
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
