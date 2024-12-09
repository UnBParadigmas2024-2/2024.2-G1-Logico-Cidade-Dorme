:- dynamic cidadao/1, assassino/1, anjo/1, detetive/1.

carregar_pessoas_como_cidadao() :- 
    file_lines('tela_inicial/pessoas_predefinidas.txt', Pessoas),
    atribuir_todos_cidadaos(Pessoas).

/* Carrega pessoas e define funcoes predefinidos */
carregar_funcoes() :-
    file_lines('tela_inicial/pessoas_predefinidas.txt', Pessoas),
    distribuir_funcoes_removendo_cidadaos(Pessoas).

/* Carrega pessoas como cidadao */
atribuir_todos_cidadaos([Pessoa | Rest]) :-
    assertz(cidadao(Pessoa)), 
    atribuir_todos_cidadaos(Rest).

/* remove cidadaos, cria um vetor de pessoas aleatorio e chama distribuir_funcoes_aux*/
distribuir_funcoes_removendo_cidadaos(Pessoas) :-
    retractall(cidadao(_)),
    random_permutation(Pessoas, PessoasEmbaralhadas),
    distribuir_funcoes_aux(PessoasEmbaralhadas, 1, 1, 1).

/* adiciona 1 anjo,detetive e assassino e o resto vai para cidadao*/
distribuir_funcoes_aux([Pessoa | Rest], AnjoCount, DetetiveCount, AssassinoCount) :-
    (   AnjoCount > 0 ->
        assertz(anjo(Pessoa)),
        NovoAnjoCount is AnjoCount - 1,
        distribuir_funcoes_aux(Rest, NovoAnjoCount, DetetiveCount, AssassinoCount)
    ;   DetetiveCount > 0 ->
        assertz(detetive(Pessoa)),
        NovoDetetiveCount is DetetiveCount - 1,
        distribuir_funcoes_aux(Rest, AnjoCount, NovoDetetiveCount, AssassinoCount)
    ;   AssassinoCount > 0 ->
        assertz(assassino(Pessoa)),
        NovoAssassinoCount is AssassinoCount - 1,
        distribuir_funcoes_aux(Rest, AnjoCount, DetetiveCount, NovoAssassinoCount)
    ;   
        assertz(cidadao(Pessoa)),
        distribuir_funcoes_aux(Rest, AnjoCount, DetetiveCount, AssassinoCount)
    ).

/* Verifica se tem pelo menos 1 funcao de cada */
verificar_funcoes :-
    (   cidadao(_), assassino(_), anjo(_)
    ->  true
    ;   write('Desculpe houve uma falha ao distribuir funcoes, tente novamente '), nl
    ).
