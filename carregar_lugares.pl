:- dynamic lugar/2.

/* Carrega lugares para cada pessoa */
carregar_lugares :-
    file_lines('pessoas.txt', Pessoas),
    distribuir_lugares(Pessoas).

/* Percorre a lista recursivamente para gerar os lugares bar, parque e restaurante */
distribuir_lugares([Pessoa | Rest]) :-
    random(1, 4, Number), 
    (   Number =:= 1 -> assertz(lugar(Pessoa, bar))
    ;   Number =:= 2 -> assertz(lugar(Pessoa, parque))
    ;   Number =:= 3 -> assertz(lugar(Pessoa, restaurante))
    ),
    distribuir_lugares(Rest).
