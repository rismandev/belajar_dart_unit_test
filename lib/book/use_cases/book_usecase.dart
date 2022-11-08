import 'package:belajar_dart_unit_test/book/model/book_model.dart';
import 'package:belajar_dart_unit_test/book/repository/book_repository.dart';

class BookUseCase {
  final BookRepository bookRepository;

  BookUseCase(this.bookRepository);

  void save(String id, String name, int price) {
    if (id.isEmpty || name.isEmpty || price <= 0) {
      throw Exception("Invalid data");
    }
    bookRepository.save(BookModel(id, name, price));
  }

  void update(String id, String name, int price) {
    if (id.isEmpty || name.isEmpty || price <= 0) {
      throw Exception("Invalid data");
    }

    var book = bookRepository.findById(id);

    if (book == null) {
      throw Exception("Book not found!");
    } else {
      book = book.copyWith(name: name, price: price);
      bookRepository.update(book);
    }
  }

  BookModel find(String id) {
    final book = bookRepository.findById(id);

    if (book == null) {
      throw Exception("Book not found!");
    } else {
      return book;
    }
  }

  void delete(String id) {
    final book = bookRepository.findById(id);

    if (book == null) {
      throw Exception("Book not found!");
    } else {
      bookRepository.delete(book);
    }
  }
}
