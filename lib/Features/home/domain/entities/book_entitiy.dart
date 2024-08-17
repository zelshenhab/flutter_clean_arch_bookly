import 'package:hive/hive.dart';
part 'book_entitiy.g.dart';

@HiveType(typeId: 0)
class BookEntitiy {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final num? price;
  @HiveField(3)
  final num? rating;
  @HiveField(4)
  final String title;
  @HiveField(5)
  final String? authorName;
  @HiveField(6)
  BookEntitiy(
      {required this.bookId,
      required this.image,
      required this.price,
      required this.rating,
      required this.title,
      required this.authorName});
}
