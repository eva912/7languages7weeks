smallest([Head|[]], Head).

smaller(X, Y, What) :-
  (X < Y), What is X.

smaller(X, Y, What) :-
  (Y < X), What is Y.

smallest([Head|Tail], Answer) :-
  smallest(Tail, What),
  smaller(What, Head, Answer).
