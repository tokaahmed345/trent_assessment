import 'package:flutter/material.dart';
import 'package:trent_assessment/feature/home/data/models/review_model.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/review_card.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/see_all_button.dart';

class ProductReviewsSection extends StatelessWidget {
  final List<ReviewModel> reviews;
  final VoidCallback? onSeeAllTap;

  const ProductReviewsSection({super.key, required this.reviews, this.onSeeAllTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SeeALLButton(title: 'التقييمات والآراء', onSeeAllTap: onSeeAllTap),
        const SizedBox(height: 12),
        ...reviews.map((review) => ReviewCard(review: review)),
      ],
    );
  }
}

