valid([]).
valid([Head|Tail]) :-
  fd_all_different(Head),
  valid(Tail).

sudoku(Puzzle, Solution) :-
  Solution = Puzzle,
  Puzzle = [A1, A2, A3, A4, A5, A6,
            B1, B2, B3, B4, B5, B6,
            C1, C2, C3, C4, C5, C6,
            D1, D2, D3, D4, D5, D6,
            E1, E2, E3, E4, E5, E6,
            F1, F2, F3, F4, F5, F6],
  fd_domain(Puzzle, 1, 6),

  Row1 = [A1, A2, A3, A4, A5, A6],
  Row2 = [B1, B2, B3, B4, B5, B6],
  Row3 = [C1, C2, C3, C4, C5, C6],
  Row4 = [D1, D2, D3, D4, D5, D6],
  Row5 = [E1, E2, E3, E4, E5, E6],
  Row6 = [F1, F2, F3, F4, F5, F6],

  Col1 = [A1, B1, C1, D1, E1, F1],
  Col2 = [A2, B2, C2, D2, E2, F2],
  Col3 = [A3, B3, C3, D3, E3, F3],
  Col4 = [A4, B4, C4, D4, E4, F4],
  Col5 = [A5, B5, C5, D5, E5, F5],
  Col6 = [A6, B6, C6, D6, E6, F6],

  Square1 = [A1, A2, A3, B1, B2, B3],
  Square2 = [A4, A5, A6, B4, B5, B6],
  Square3 = [C1, C2, C3, D1, D2, D3],
  Square4 = [C4, C5, C6, D4, D5, D6],
  Square5 = [E1, E2, E3, F1, F2, F3],
  Square6 = [E4, E5, E6, F4, F5, F6],

  valid([Row1, Row2, Row3, Row4, Row5, Row6,
         Col1, Col2, Col3, Col4, Col5, Col6,
         Square1, Square2, Square3, Square4, Square5, Square6]).
