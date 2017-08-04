getElement(Ind, [H|T], C):-
Ind == 0 -> C = H;
Z is Ind-1, getElement(Z, T, C).

:-initialization main.

main:-
  read_line_to_codes(user_input, A2),
  string_to_atom(A2,A1),
  atom_number(A1, A),

  read_line_to_codes(user_input, B2),
  string_to_atom(B2,B1),
  atom_number(B1, B),

  read_line_to_codes(user_input, C2),
  string_to_atom(C2,C1),
  atom_number(C1, C),

  read_line_to_codes(user_input, D2),
  string_to_atom(D2,D1),
  atom_number(D1, D),

  read_line_to_codes(user_input, E2),
  string_to_atom(E2,E1),
  string_chars(E1, E),

  read_line_to_codes(user_input, F2),
  string_to_atom(F2,F1),
  string_chars(F1, F),

  read_line_to_codes(user_input, G2),
  string_to_atom(G2,G1),
  string_chars(G1, G),

  read_line_to_codes(user_input, H2),
  string_to_atom(H2,H1),
  string_chars(H1, H),


  getElement(A, E, PRIMEIRA),
  getElement(B, F, SEGUNDA),
  getElement(C, G, TERCEIRA),
  getElement(D, H, QUARTA),

  atom_concat(PRIMEIRA, SEGUNDA, PALAVRA1),
  atom_concat(PALAVRA1, TERCEIRA, PALAVRA2),
  atom_concat(PALAVRA2, QUARTA, PALAVRA),

  write(PALAVRA).
