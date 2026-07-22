class ProductModel {
  final String id;
  final String title;
  final String category;
  final String location;
  final String price;
  final String period;
  final double rating;
  final String imageUrl;
  final bool isFavorite;
  final String description; 

  const ProductModel({
    required this.id,
    required this.title,
    required this.category,
    required this.location,
    required this.price,
    required this.period,
    required this.rating,
    required this.imageUrl,
    required this.isFavorite,
    this.description = '',
  });
}