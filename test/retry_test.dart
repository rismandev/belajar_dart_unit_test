@Retry(10)

import 'package:test/test.dart';

void main() {
  test("Test retry 10x", () {
    expect(1, 2);
  });
}
