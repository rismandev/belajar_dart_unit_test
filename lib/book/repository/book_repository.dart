import 'package:belajar_dart_unit_test/book/model/book_model.dart';

class BookRepository {
  void save(BookModel book) {
    print("Save $book");
    throw UnsupportedError("save book not supported");
  }

  void update(BookModel book) {
    print("Update $book");
    throw UnsupportedError("update book not supported");
  }

  void delete(BookModel book) {
    print("Delete $book");
    throw UnsupportedError("delete book not supported");
  }

  BookModel? findById(String id) {
    print("Find by id $id");
    throw UnsupportedError("find by id not supported");
  }
}
