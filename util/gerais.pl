/* Fatos */
periodo(noite).

:- dynamic vencedor/1.
vencedor(indefinido).

:- dynamic numeroNoite/1.
numeroNoite(1).

:- dynamic anjoVivo/1.
anjoVivo(sim).

:- dynamic fantasma/1, acusado/1.


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

matar_anjo() :-
    anjoVivo(ValorAtual),
    retract(anjoVivo(ValorAtual)),
    assertz(anjoVivo(nao)),
    writeln("Matou anjo").

nova_rodada() :-
    altera_numero_rodada,
    write(''), nl,
    write('=============================='), nl,
    numeroNoite(Numero),
    format('Milene: Noite ~w... Todos fechem os olhos !!!', Numero), nl,
    write(''), nl,
    assassino_matar,
    write(''), nl,
    (anjoVivo(sim) -> verificar_fantasma_e_anjos; detetive_acusar),
    write(''), nl,
    write('VIVOS:'), nl,
    listar_todos_vivos,
    write('FANTASMAS:'), nl,
    listar_todos_fantasmas,
    (vencedor(indefinido) -> nova_rodada; fim_de_jogo).

fim_de_jogo() :-
    write(''), nl,
    [setup].


