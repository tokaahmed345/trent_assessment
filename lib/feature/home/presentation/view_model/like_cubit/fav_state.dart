import 'package:equatable/equatable.dart';

abstract class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object?> get props => [];
}

class FavoriteInitialState extends FavoriteState {}

class FavoriteLikedState extends FavoriteState {
  final String productId;
  final List<String> favoriteIds;

  const FavoriteLikedState({
    required this.productId,
    required this.favoriteIds,
  });

  @override
  List<Object?> get props => [productId, favoriteIds];
}

class FavoriteUnlikedState extends FavoriteState {
  final String productId;
  final List<String> favoriteIds;

  const FavoriteUnlikedState({
    required this.productId,
    required this.favoriteIds,
  });

  @override
  List<Object?> get props => [productId, favoriteIds];
}

class FavoriteFailureState extends FavoriteState {
  final String errorMessage;

  const FavoriteFailureState(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}