import 'package:test/test.dart';

void main() {
  var data = "Risman";

  setUp(() {
    data = "Risman";
  });

  group("Test with Setup Function =>", () {
    test("String first", () {
      data = "$data Abdilah";
      expect(data, equals("Risman Abdilah"));
    });
    test("String second", () {
      data = "$data Abdulah";
      expect(data, equals("Risman Abdulah"));
    });
  });
}
