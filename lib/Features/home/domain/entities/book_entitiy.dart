class BookEntitiy {
  final String bookId;
  final String? image;
  final num? price;
  final num? rating;
  final String title;
  final String? authorName;

  BookEntitiy(
      {required this.bookId,
      required this.image,
      required this.price,
      required this.rating,
      required this.title,
      required this.authorName});
}
