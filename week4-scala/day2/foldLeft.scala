val words = List("Civilness", "Subextensibness", "Pseudoacquaintance", "Underdeacon", "Unridiculousness")

val result = words.foldLeft(0) ((sum, word) => sum + word.length)
println(result)

val result2 = (0 /: words) {(sum, word) => sum + word.length }
println(result2)
