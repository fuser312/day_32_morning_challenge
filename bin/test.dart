import 'package:test/test.dart';
import 'main.dart';
void main() {
  Shiritori game1=Shiritori();
  test('Shiritori', () {
    expect(game1.play("hello"),true);
    expect(game1.play("orange"),true);
    expect(game1.play("eagle"),true);
    expect(game1.play("ear"),true);
    expect(game1.play("camel"),false); //camel does not match with ear
    game1.restart();
    expect(game1.play("hello"),true);
    expect(game1.play("hello"),false); // duplicate word in list
    game1.restart();
    expect(game1.play("hello"),true);
    expect(game1.play(""),false); // check for invalid word
    game1.restart();
    expect(game1.play("hello"),true);
    expect(game1.play("Orange"),true); // check for lower /upper case
    expect(game1.play("Elephant"),true);
  });
}
