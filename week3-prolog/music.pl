play(jimi_hendrix, guitar).
play(eric_clapton, guitar).
play(jimmy_page, guitar).
play(david_bowie, saxophone).
play(david_bowie, piano).
play(tim_berne, saxophone).
play(james_carter, saxophone).

style(jimi_hendrix, rock).
style(eric_clapton, rock).
style(eric_clapton, blues).
style(jimmy_page, rock).
style(jimmy_page, metal).
style(david_bowie, rock).
style(tim_berne, jazz).
style(james_carter, jazz).

guitarist(Who) :-
  play(Who, guitar).

instruments_for_genre(Instrument, Genre) :-
  style(Musician, Genre), play(Musician, Instrument).
