adicionar_fantasma(Pessoa) :-
    assertz(fantasma(Pessoa)),  % Adiciona a pessoa como fantasma,
    write(''), nl,
    format('~w agora é um(a) fantasma!~n', [Pessoa]).