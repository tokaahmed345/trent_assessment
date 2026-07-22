import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/service/mock_data.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';
import 'package:trent_assessment/feature/home/data/models/product_model.dart';
import 'package:trent_assessment/feature/home/presentation/view_model/like_cubit/fav_cubit.dart';
import 'package:trent_assessment/feature/home/presentation/view_model/like_cubit/fav_state.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/producut_details.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final favoriteCubit = context.read<FavoriteCubit>();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider.value(
              value: favoriteCubit,
              child: ProductDetailsView(
                product: product,
                otherProducts: HomeMockData.chairsList
                    .where((p) => p.id != product.id)
                    .toList(),
                similarProducts: HomeMockData.seatsList,
              ),
            ),
          ),
        );
      },
      child: Container(
        width: 155,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: context.surfaceColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: context.borderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: product.imageUrl,
                    height: 110,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      height: 110,
                      width: double.infinity,
                      color: AppColors.primaryLight,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(
                      height: 110,
                      width: double.infinity,
                      color: AppColors.primaryLight,
                      child: const Icon(
                        Icons.chair,
                        size: 40,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 6,
                  left: 6,
                  child: BlocConsumer<FavoriteCubit, FavoriteState>(
                    listener: (context, state) {
                      if (state is FavoriteFailureState) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.errorMessage),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      final cubit = context.read<FavoriteCubit>();
                      final isFav = cubit.isFavorite(
                        product.id,
                        product.isFavorite,
                      );

                      return GestureDetector(
                        onTap: () {
                          // مهم: نمنع إن الضغط على القلب يفتح صفحة التفاصيل
                          cubit.toggleFavorite(product.id);
                        },
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: AppColors.whiteColor,
                          child: Icon(
                            isFav ? Icons.favorite : Icons.favorite_border,
                            size: 15,
                            color: isFav
                                ? AppColors.favoriteRed
                                : AppColors.greyColor,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.orangeColor.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          product.category,
                          style: AppTextStyle.caption10.copyWith(
                            color: AppColors.orangeColor,
                            fontSize: 9,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 11,
                            color: AppColors.orangeColor,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '${product.rating}',
                            style: AppTextStyle.caption10.copyWith(
                              color: context.textPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.body12Medium.copyWith(
                      color: context.textPrimary,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 11,
                        color: AppColors.greyColor,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        product.location,
                        style: AppTextStyle.caption10.copyWith(
                          color: context.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${product.price} ',
                              style: AppTextStyle.price16Bold.copyWith(
                                color: context.textPrimary,
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: 'ر.س',
                              style: AppTextStyle.caption10.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' /${product.period}',
                              style: AppTextStyle.caption10.copyWith(
                                color: context.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        radius: 11,
                        backgroundColor: AppColors.primaryLight,
                        child: Icon(
                          Icons.add,
                          size: 14,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
