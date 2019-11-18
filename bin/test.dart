import 'package:test/test.dart';
import 'main.dart';
void main() {
  Shiritori game1=Shiritori();
  test('Shiritori', () {
    expect(game1.play("hello"),true);
    expect(game1.play("orange"),true);
    expect(game1.game_over,false);// game over should be false since game is on
    expect(game1.play("eagle"),true);
    expect(game1.play("ear"),true);
    expect(game1.play("camel"),false); //camel does not match with ear
    expect(game1.game_over,true);  //check for game over since wrong word is entered
    game1.restart();
    expect(game1.game_over,false); // game over should be false after restart
    expect(game1.play("hello"),true);
    expect(game1.play("hello"),false);// duplicate word in list
    expect(game1.game_over,true);// check for game over
    game1.restart();
    expect(game1.game_over,false);// game over should be false since game is on
    expect(game1.play("hello"),true);
    expect(game1.play(""),false); // check for invalid word
    expect(game1.game_over,true);// check for game over
    game1.restart();
    expect(game1.play("hello"),true);
    expect(game1.play("Orange"),true); // check for lower /upper case
    expect(game1.game_over,false);// game over should be false since game is on
    expect(game1.play("Elephant"),true);
    expect(game1.game_over,false);// game over should be false since game is on
  });
}
