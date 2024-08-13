import 'package:flutter/material.dart';
import 'package:flutter_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter_bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter_bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter_bookly/core/utils/styles.dart';

class BookDetalisSection extends StatelessWidget {
  const BookDetalisSection({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(book.volumeInfo.authors?[0] ?? '',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo.maturityRating ?? '',
          count: book.volumeInfo.pageCount ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
          bookModel: book,
        ),
      ],
    );
  }
}
