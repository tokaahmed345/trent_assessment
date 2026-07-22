import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trent_assessment/feature/home/presentation/view_model/like_cubit/fav_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitialState());

  final List<String> _favoriteIds = [];

  void toggleFavorite(String productId) {
    try {
      if (_favoriteIds.contains(productId)) {
        _favoriteIds.remove(productId);
        
        emit(FavoriteUnlikedState(
          productId: productId,
          favoriteIds: List.from(_favoriteIds),
        ));
      } else {
        _favoriteIds.add(productId);

        emit(FavoriteLikedState(
          productId: productId,
          favoriteIds: List.from(_favoriteIds),
        ));
      }
    } catch (e) {
      emit(FavoriteFailureState(' error to upload : ${e.toString()}'));
    }
  }

  bool isFavorite(String productId, bool initialIsFav) {
    if (_favoriteIds.contains(productId)) {
      return true;
    }
    return initialIsFav;
  }
}