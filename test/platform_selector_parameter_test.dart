import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group("Test with Group Function", () {
    test("Positive", () {
      expect(sum(1, 2), equals(3));
    }, testOn: "mac-os");

    test("Negative", () {
      expect(sum(10, -5), equals(5));
    }, testOn: "windows");
  }, testOn: "windows || mac-os");
}
