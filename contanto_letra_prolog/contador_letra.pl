contaLetra([], LETRA, 0).
contaLetra([LETRA|T], LETRA, S):- contaLetra(T, LETRA, G), S is 1 + G.
contaLetra([H|T], LETRA, S):- contaLetra(T, LETRA, S).

:-initialization main.

main:-

  read_line_to_codes(user_input, A1),
  string_to_atom(A1, LETRA),

  read_line_to_codes(user_input, B3),
  string_chars(B3, FRASE),

  contaLetra(FRASE, LETRA, CONT),

  write(CONT).
