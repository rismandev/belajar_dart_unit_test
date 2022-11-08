import 'package:belajar_dart_unit_test/book/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  group("Test Mock Object =>", () {
    late MockBookRepository bookRepository;
    late BookUseCase bookUseCase;

    setUp(() {
      bookRepository = MockBookRepository();
      bookUseCase = BookUseCase(bookRepository);
    });

    test("Save book must be success", () {
      bookUseCase.save("1", "Buku Saham", 20000);
    });

    test("Save book must be success with mock verify", () {
      bookUseCase.save("1", "Buku Saham", 20000);

      final bookSample = BookModel("1", "Buku Saham", 20000);
      // Verify & Check bookRepository.save only call 1x
      verify(bookRepository.save(bookSample)).called(1);
    });

    test("Find book by id not found result", () {
      expect(() {
        bookUseCase.find("1");
      }, throwsException);
    });

    test("Find book by id with stubing for mock object", () {
      when(
        bookRepository.findById("1"),
      ).thenReturn(BookModel("1", "Buku Saham", 20000));

      final book = bookUseCase.find("1");
      expect(book, BookModel("1", "Buku Saham", 20000));

      verify(bookRepository.findById("1")).called(1);
    });

    test("Test Argument Matcher in Mockito", () {
      when(
        bookRepository.findById(argThat(startsWith("bookId"))),
      ).thenReturn(BookModel("bookId123", "Buku Saham", 20000));

      final book = bookUseCase.find("bookId123");
      expect(book, BookModel("bookId123", "Buku Saham", 20000));

      verify(bookRepository.findById(argThat(startsWith("bookId")))).called(1);
    });
  });
}
