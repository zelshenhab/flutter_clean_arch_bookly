import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bookly/Features/home/presentation/views/widgets/book_detalis_view_body.dart';

class BookDetalisView extends StatefulWidget {
  const BookDetalisView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetalisView> createState() => _BookDetalisViewState();
}

class _BookDetalisViewState extends State<BookDetalisView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories?[0] ?? "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetalisViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
