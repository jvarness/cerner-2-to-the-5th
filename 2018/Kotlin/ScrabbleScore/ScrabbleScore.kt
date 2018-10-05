import kotlin.collections.mapOf
// cerner_2^5_2018
fun main(args: Array<String>) {
  if(args.size < 1) {
    println("Provide a word as the first argument!")
  } else {
    val word = args[0];
    val score = ScrabbleScore.scoreWord(word)
    println("Scrabble score of $word is $score");
  }
}

object ScrabbleScore {
  private val letters = mapOf('A' to 1, 'B' to 3, 'C' to 3, 
    'D' to 2, 'E' to 1, 'F' to 4, 'G' to 2, 'H' to 4, 'I' to 1, 'J' to 8, 'K' to 5,
    'L' to 1, 'M' to 3, 'N' to 1, 'O' to 1, 'P' to 3, 'Q' to 10, 'R' to 1, 'S' to 1,
    'T' to 1, 'U' to 1, 'V' to 4, 'W' to 4, 'X' to 8, 'Y' to 4, 'Z' to 10);

  fun scoreWord(word: String): Int {
    val trimmedWord = word.trim().toUpperCase();
    if(trimmedWord.isEmpty()) {
      return 0;
    } else {
      return trimmedWord.map({letter: Char ->
        letters[letter] ?: 0;
      }).fold(0, {sum, num ->
        sum.plus(num)
      });
    }
  }
}