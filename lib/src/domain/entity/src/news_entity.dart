import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final String id;

  final String titleRu;
  final String titleEn;
  final String titleTK;

  final String descriptionRu;
  final String descriptionEn;
  final String descriptionTK;

  final String imageUrl;
  final DateTime? date;

  const NewsEntity({
    required this.id,
    required this.titleRu,
    required this.titleEn,
    required this.titleTK,
    required this.descriptionRu,
    required this.descriptionEn,
    required this.descriptionTK,
    required this.imageUrl,
    this.date,
  });

  @override
  List<Object?> get props => [
        id,
        titleRu,
        titleEn,
        titleTK,
        descriptionRu,
        descriptionEn,
        descriptionTK,
        imageUrl,
        date,
      ];
}
