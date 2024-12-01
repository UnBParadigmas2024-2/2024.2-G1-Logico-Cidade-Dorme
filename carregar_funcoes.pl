:- dynamic cidadao/1, mafioso/1, medico/1.

/* Carrega pessoas e define lugares predefinidos */
carregar_funcoes() :-
    file_lines('pessoas.txt', Pessoas),
    distribuir_funcoes(Pessoas).

/* Distribui funcoes para as pessoas aleatoriamente de forma recursiva */
distribuir_funcoes([Pessoa | Rest]) :-
    random(1, 4, Number),
    (   Number =:= 1 -> assertz(cidadao(Pessoa))
    ;   Number =:= 2 -> assertz(mafioso(Pessoa))
    ;   Number =:= 3 -> assertz(medico(Pessoa))
    ),
    distribuir_funcoes(Rest).

/* Verifica se tem pelo menos 1 funcao de cada */
verificar_funcoes :-
    (   cidadao(_), mafioso(_), medico(_)
    ->  true
    ;   write('Desculpe houve uma falha ao distribuir funcoes, tente novamente '), nl
    ).