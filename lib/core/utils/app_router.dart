import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_bookly/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bookly/Features/home/presentation/views/book_detalis_view.dart';
import 'package:flutter_bookly/Features/home/presentation/views/home_view.dart';
import 'package:flutter_bookly/Features/search/presentation/views/search.dart';
import 'package:flutter_bookly/core/utils/service_locator.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetalisView = '/bookDetalisView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetalisView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetalisView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
