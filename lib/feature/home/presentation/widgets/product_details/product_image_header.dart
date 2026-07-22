import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/feature/home/presentation/view_model/like_cubit/fav_cubit.dart';
import 'package:trent_assessment/feature/home/presentation/view_model/like_cubit/fav_state.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/circle_icon_button.dart';

class ProductImageHeader extends StatefulWidget {
  final String productId;
  final bool initialIsFavorite;
  final List<String> images;

  const ProductImageHeader({
    super.key,
    required this.productId,
    required this.initialIsFavorite,
    required this.images,
  });

  @override
  State<ProductImageHeader> createState() => _ProductImageHeaderState();
}

class _ProductImageHeaderState extends State<ProductImageHeader> {
  final PageController _pageController = PageController();
  int _currentImage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.images.length,
            onPageChanged: (index) => setState(() => _currentImage = index),
            itemBuilder: (context, index) {
              return Image.network(
                widget.images[index],
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: AppColors.primaryLight,
                  child: const Icon(
                    Icons.chair,
                    size: 70,
                    color: AppColors.primary,
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 50,
          right: 16,
          child: CircleIconButton(
            icon: Icons.arrow_back_ios_new,
            onTap: () => Navigator.pop(context),
          ),
        ),
        Positioned(
          top: 50,
          left: 16,
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
                widget.productId,
                widget.initialIsFavorite,
              );
              return CircleIconButton(
                icon: isFav ? Icons.favorite : Icons.favorite_border,
                iconColor: isFav ? AppColors.favoriteRed : AppColors.blackColor,
                onTap: () => cubit.toggleFavorite(widget.productId),
              );
            },
          ),
        ),
        if (widget.images.length > 1)
          Positioned(
            bottom: 14,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.images.length, (index) {
                final isActive = index == _currentImage;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: isActive ? 18 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: isActive
                        ? AppColors.whiteColor
                        : AppColors.whiteColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(3),
                  ),
                );
              }),
            ),
          ),
      ],
    );
  }
}
