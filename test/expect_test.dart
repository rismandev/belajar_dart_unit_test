import 'package:test/test.dart';

String sayHello(String name) {
  return "Hello $name";
}

void main() {
  test("Test Expect sayHello()", () {
    expect(sayHello("Rimuru"), "Hello Rimuru");
  });
}
