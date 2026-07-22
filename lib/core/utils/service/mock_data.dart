import 'package:flutter/material.dart';
import 'package:trent_assessment/feature/home/data/models/category_model.dart';
import 'package:trent_assessment/feature/home/data/models/product_model.dart';
import 'package:trent_assessment/feature/home/data/models/review_model.dart';

abstract class HomeMockData {
  static const List<CategoryModel> categories = [
    CategoryModel(
      id: '1',
      title: 'تأجير المعدات',
      icon: Icons.precision_manufacturing_rounded,
    ),
    CategoryModel(
      id: '2',
      title: 'معدات الإنشاء',
      icon: Icons.engineering_rounded,
    ),
    CategoryModel(
      id: '3',
      title: 'معدات التصوير',
      icon: Icons.photo_camera_rounded,
    ),
    CategoryModel(
      id: '4',
      title: 'إلكترونيات',
      icon: Icons.laptop_chromebook_rounded,
    ),
    CategoryModel(
      id: '5',
      title: 'مقتنيات أخرى',
      icon: Icons.work_outline_rounded,
    ),
  ];

  static const List<ProductModel> chairsList = [
    ProductModel(
      id: 'c1',
      title: 'كرسي ASA Chemink .. Diamond',
      category: 'أثاث ومفروشات',
      location: 'الرياض',
      price: '150',
      period: 'اليوم',
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?q=80&w=400',
      isFavorite: false,
      description:
          'كرسي مريح ومناسب للاستخدام اليومي أو المكتبي، مصنوع من خامات عالية '
          'الجودة ويتحمل الاستخدام لفترات طويلة. مناسب لعشاق الألعاب والعمل '
          'من المكتب على حد سواء، ويأتي مع إمكانية التعديل في الارتفاع والميل.',
    ),
    ProductModel(
      id: 'c2',
      title: 'كراسي مقاهي خشبية سويدي',
      category: 'أثاث ومفروشات',
      location: 'الرياض',
      price: '200',
      period: 'صباح',
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1503602642458-232111445657?q=80&w=400',
      isFavorite: false,
      description:
          'كراسي مقاهي خشبية بتصميم سويدي أنيق، مناسبة للمقاهي والمطاعم '
          'والاستخدام المنزلي، خفيفة الوزن وسهلة النقل مع متانة عالية.',
    ),
    ProductModel(
      id: 'c3',
      title: 'إيجار طاولات وكراسي',
      category: 'أثاث ومفروشات',
      location: 'الرياض',
      price: '200',
      period: 'اليوم',
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?q=80&w=400',
      isFavorite: false,
      description:
          'مجموعة متكاملة من الطاولات والكراسي مناسبة للمناسبات والحفلات، '
          'تشمل التوصيل والتركيب في نفس اليوم.',
    ),
  ];

  static const List<ProductModel> seatsList = [
    ProductModel(
      id: 's1',
      title: 'جلسات خارجية حديد وخشب',
      category: 'أثاث ومفروشات',
      location: 'الرياض',
      price: '1500',
      period: 'البيع',
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?q=80&w=400',
      isFavorite: false,
      description:
          'جلسات خارجية مصنوعة من الحديد والخشب المعالج، مقاومة لعوامل '
          'الجو ومناسبة للحدائق والاستراحات، تصميم عصري يدوم لسنوات.',
    ),
    ProductModel(
      id: 's2',
      title: 'إيجار كنب مودرن',
      category: 'أثاث ومفروشات',
      location: 'الرياض',
      price: '100',
      period: 'اليوم',
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?q=80&w=400',
      isFavorite: false,
      description:
          'كنب مودرن مريح بتصميم بسيط وأنيق، متاح للإيجار اليومي '
          'للمناسبات والتصوير، مع خيارات ألوان متعددة.',
    ),
  ];

  static const List<ReviewModel> chairReviews = [
    ReviewModel(
      userName: 'محمد أحمد',
      rating: 5,
      comment: 'خدمة ممتازة والمنتج مطابق للصور تماماً، أنصح بالتعامل معاهم.',
      timeAgo: 'من 3 أيام',
    ),
    ReviewModel(
      userName: 'سارة علي',
      rating: 4,
      comment: 'جودة كويسة والتوصيل كان في الميعاد بالظبط.',
      timeAgo: 'من أسبوع',
    ),
  ];
}