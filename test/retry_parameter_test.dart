import 'package:test/test.dart';

void main() {
  test("Test retry 5x", () {
    expect(1, 2);
  }, retry: 5);
}
