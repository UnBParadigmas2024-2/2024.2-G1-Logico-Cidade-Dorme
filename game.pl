/* Fatos */
periodo(noite).

:- dynamic vencedor/1.
vencedor(indefinido).

:- dynamic numeroNoite/1.
numeroNoite(1).

/* Regras */
e_noite :-
    periodo(noite),
    nl.

/* Altera numero da noite */
altera_numero_rodada() :-
    numeroNoite(ValorAtual),
    retract(numeroNoite(ValorAtual)),
    NovoValor is ValorAtual + 1,
    assertz(numeroNoite(NovoValor)).

definir_vencedor(V) :-
    vencedor(ValorAtual),
    retract(vencedor(ValorAtual)),
    assertz(vencedor(V)).

nova_rodada() :-
    altera_numero_rodada,
    write(''), nl,
    write('=============================='), nl,
    numeroNoite(Numero),
    format('Milene: Noite ~w... Todos fechem os olhos !!!', Numero), nl,
    write(''), nl,
    assassino_matar,
    write(''), nl,
    verificar_fantasma_e_anjos,
    write(''), nl,
    write('VIVOS:'), nl,
    listar_todos_vivos,
    write('FANTASMAS:'), nl,
    listar_todos_fantasmas,
    (vencedor(indefinido) -> nova_rodada; fim_de_jogo).

fim_de_jogo() :-
    write(''), nl,
    vencedor(X),
    format('Milene: VENCEDOR !!!', X), nl.

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
