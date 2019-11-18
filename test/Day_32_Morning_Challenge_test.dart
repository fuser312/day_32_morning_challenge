import 'package:test/test.dart';

void main() {
  test('Shiritori', () {
    expect(shiritori(["hello","oxygen","nephew","owl"]),true);
    expect(shiritori(["hello","oxygen","cow","owl"]),false);
    expect(shiritori(["hello"]),false);
    expect(shiritori([]),false);
  });
}
