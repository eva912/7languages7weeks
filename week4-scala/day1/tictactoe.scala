class Tictactoe(val board: List[java.lang.String]) {

  val allPossibleWins = List(
    new Triplet(0, 1, 2), new Triplet(3, 4, 5), new Triplet(6, 7, 8),
    new Triplet(0, 3, 6), new Triplet(1, 4, 7), new Triplet(2, 5, 8),
    new Triplet(0, 4, 8), new Triplet(2, 4, 6))

  def winner {
    allPossibleWins.foreach { triplet =>
      var winning = triplet.winning(board)
      if(winning != "") {
        println(winning + " won!")
        return
      }
    }
    println("Nobody won")
  }
}

class Triplet(val first:Int, val second:Int, val third:Int) {
  def winning(board: List[java.lang.String]):java.lang.String = {
    if(List(
        board(first),
        board(second),
        board(third)).toSet.size == 1
      ) {
      board(first)
    } else {
      ""
    }
  }
}

val newGame = new Tictactoe(List("", "", "", "", "", "", "", "", ""))
newGame.winner

val xShouldWin = new Tictactoe(List("X", "X", "X", "", "0", "", "", "0", "0"))
xShouldWin.winner

val zeroShouldWin = new Tictactoe(List("0", "0", "X", "", "0", "", "X", "X", "0"))
zeroShouldWin.winner

val stalemate = new Tictactoe(List("0", "0", "X", "X", "X", "0", "0", "X", "0"))
stalemate.winner
