import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_bookly/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter_bookly/Features/home/domain/use_cases/fetch_newset_books_use_case.dart';
import 'package:flutter_bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter_bookly/Features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter_bookly/constants.dart';
import 'package:flutter_bookly/core/utils/app_router.dart';
import 'package:flutter_bookly/core/utils/function/simple_bloc_observer.dart';
import 'package:flutter_bookly/core/utils/service_locator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  setupServiceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewsetBooksCubit(
              FetchNewsetBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
