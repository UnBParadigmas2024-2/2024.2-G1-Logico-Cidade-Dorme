anjo_salvar() :-
    (bagof(F, fantasma(F), Fantasmas) ; Fantasmas = []),  % Obtém todos os fantasmas ou lista vazia
    read(NomeEscolhido),  % Ler o nome escolhido pelo anjo
    downcase_atom(NomeEscolhido, EscolhidoLower),  % Converte o nome escolhido para minúsculas
    (   member(Fantasma, Fantasmas),                % Verifica se o nome está na lista de fantasmas
        downcase_atom(Fantasma, FantasmaLower),      % Converte o nome do fantasma para minúsculas
        EscolhidoLower = FantasmaLower               % Compara os nomes convertidos
    ->  retract(fantasma(Fantasma)),                 % Remove o fantasma da lista de fantasmas
        assertz(vivo(Fantasma)),                     % Adiciona o fantasma à lista de vivos
        write(''), nl,
        format('~w Foi salvo!~n', [NomeEscolhido]),
        detetive_acusar
    ;   write(''), nl,
        format('Anjo não conseguiu salvar o morto.'),
        detetive_acusar
    ).