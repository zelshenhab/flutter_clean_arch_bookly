import 'package:flutter/material.dart';
import 'package:flutter_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly/Features/home/presentation/views/widgets/books_detalis_section.dart';
import 'package:flutter_bookly/Features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:flutter_bookly/Features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetalisAppBar(),
                BookDetalisSection(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
