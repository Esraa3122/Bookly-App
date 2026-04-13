import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.featuredBooksUseCase) : super(NewestBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await featuredBooksUseCase.call();

    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.message));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
