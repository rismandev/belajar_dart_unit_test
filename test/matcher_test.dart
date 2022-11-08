import 'package:test/test.dart';

String sayHello(String name) {
  return "Hello $name";
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test("Test Expect sayHello() with matcher", () {
    expect(sayHello("Rimuru"), equals("Hello Rimuru"));
    expect(sayHello("Rimuru"), startsWith("Hello"));
    expect(sayHello("Rimuru"), endsWith("Rimuru"));
    expect(sayHello("Rimuru"), equalsIgnoringCase("hello rimuru"));

    expect(sayHello("Rimuru"), isA<String>());
    expect(sayHello("Rimuru"), isNotEmpty);
  });

  test("Test Expect sum() with matcher", () {
    expect(sum(1, 1), isA<int>());

    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(3));
  });
}
