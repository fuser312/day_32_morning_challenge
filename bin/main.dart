// Challenge
// Shiritori Game
// This challenge is an English twist on the Japanese word game Shiritori.
// The basic premise is to follow two rules:
//
// 1. First character of next word must match last character of previous word.
// 2. The word must not have already been said.

// Write a Shiritori class that has two instance properties:
// - words: a list of words already said.
// - game_over: a boolean that is true if the game is over.
//  and two instance methods:
//
// - play: a method that takes in a word as an argument and checks if it is valid
// (the word should follow rules #1 and #2 above).
// - restart: a method that sets the words list to an empty one [] and sets the
// game_over boolean to false. It should return "game restarted".

class Shiritori{
  List<String> words=[];
  bool game_over = false;

  bool play(String word){
    if(word == ""){
      game_over = true;
      return false;
    }
    else if(words.isEmpty && !game_over){
      words.add(word);
      return true;
    }

    else if(words.contains(word)){
      game_over = true;
      return false;
    }

    else if(words.isNotEmpty && !game_over){
      if(word.split("").first == words.last.split("").last ){
        words.add(word);
        return true;
      }
      game_over = true;
      return false;
    }


    else{
     game_over = true;
     return false;

   }


  }
  restart(){
    words=[];
    game_over = false;
  }
}
main() {
  Shiritori game1=Shiritori();
  print(game1.play('hello'));
  print(game1.play("orange"));
 // print((game1.words.contains('orange')&&((game1.words[game1.words.indexOf('orange')-1].split("").last == 'orange'.split("").first))));


}