import 'package:test/test.dart';
import 'main.dart';
void main() {
  Shiritori game1=Shiritori();
  test('Shiritori', () {
    expect(game1.play("hello"),false);
    expect(game1.play("kite"),true);
  });
}
