/* Fatos */
periodo(noite).

/* Regras */
e_noite :-
    periodo(noite),
    nl.

/* Mostra funcoes de cada pessoas */
mostrar_pessoas() :-
    findall(Cidadao, cidadao(Cidadao), Cidadaos),
    findall(Assassino, assassino(Assassino), Assassinos),
    findall(Anjo, anjo(Anjo), Anjos),
    findall(Detetive, detetive(Detetive), Detetives),
    format('  Cidadãos: ~w~n', [Cidadaos]),
    format('  Assassinos: ~w~n', [Assassinos]),
    format('  Anjos: ~w~n', [Anjos]),
    format('  Detetives: ~w~n', [Detetives]).