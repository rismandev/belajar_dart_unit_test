import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group("Test with Platform Specific on Test Function", () {
    test("Positive", () {
      expect(sum(1, 2), equals(3));
    });
    test("Negative", () {
      expect(sum(10, -5), equals(5));
    }, onPlatform: {
      "mac-os": Skip("This unit test not supported on macOS platform"),
    });
  });

  group("Test with Platform Specific on Group Function", () {
    test("Positive", () {
      expect(sum(1, 2), equals(3));
    });
    test("Negative", () {
      expect(sum(10, -5), equals(5));
    });
  }, onPlatform: {
    "mac-os": Skip("This unit test not supported on macOS platform"),
  });
}
