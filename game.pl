:- dynamic esfaqueado/2.
/* Fatos */

periodo(noite).

/* Regras */
e_noite :-
    periodo(noite),
    nl.

/* Se o mafioso e cidadao estao no mesmo lugar anoite, ele pode esfaquear */
esfaqueou(Mafioso, Cidadao, Lugar) :- 
    cidadao(Cidadao),
    mafioso(Mafioso),
    lugar(Mafioso, Lugar),
    lugar(Cidadao, Lugar),
    e_noite,
    retract(cidadao(Cidadao)),
    retract(lugar(Cidadao, Lugar)),
    format('O cidadão ~w foi esfaqueado pelo mafioso ~w no lugar ~w.~n', [Cidadao, Mafioso, Lugar]).

mostrar_pessoas() :-
    findall(Cidadao, cidadao(Cidadao), Cidadaos),
    findall(Mafioso, mafioso(Mafioso), Mafiosos),
    findall(Anjo, anjo(Anjo), Anjos),
    findall(Detetive, detetive(Detetive), Detetives),
    format('  Cidadãos: ~w~n', [Cidadaos]),
    format('  Mafiosos: ~w~n', [Mafiosos]),
    format('  Anjos: ~w~n', [Anjos]),
    format('  Detetives: ~w~n', [Detetives]).