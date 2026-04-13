import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookModel>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  @override
  Future<List<BookModel>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

} {
  
}