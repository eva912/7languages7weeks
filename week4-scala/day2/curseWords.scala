class Song(val lyrics: String)

trait Censor {
  val alternativeWords = Map(
    "motherfucking" -> "mother loving",
    "motherfucker" -> "mother lover",
    "fucking" -> "freaking",
    "fucker" -> "fornicator",
    "fuck" -> "fornicate",
    "Fuck" -> "Fornicate",
    "asses" -> "butts"
  )

  def cleanVersion() {
    var result = lyrics
    val replacements = alternativeWords.toSeq.sortBy(tuple => tuple._1.length).reverse
    replacements.foreach (tuple => result = ((tuple._1).r).replaceAllIn(result, tuple._2))
    println(result)
  }
}

class RudeSong(override val lyrics: String) extends Song(lyrics) with Censor {
}

val lyrics = scala.io.Source.fromFile("lyrics.txt").mkString

val fuckThePope = new RudeSong(lyrics)
fuckThePope.cleanVersion
