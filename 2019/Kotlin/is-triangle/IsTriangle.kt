// cerner_2^5_2019
fun main(args: Array<String>) {
  if (args.size < 3) {
    println("Pass 3 numbers to me")
  } else {
    val a = args[0].toDoubleOrNull() as Double
    val b = args[1].toDoubleOrNull() as Double
    val c = args[2].toDoubleOrNull() as Double
    when {
      a + b > c && a + c > b && c + b > a -> println("True")
      else -> print("False")
    }
  }
}