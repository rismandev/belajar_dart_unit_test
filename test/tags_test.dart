@Tags(["dart_tags"])

import 'package:test/test.dart';

void main() {
  test("Test tags first", () {
    print("First");
  }, tags: ["first"]);

  test("Test tags second", () {
    print("Second");
  }, tags: ["second"]);
}
