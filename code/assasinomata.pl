% Carrega o arquivo com o estado inicial dos jogadores
:- consult('../pessoas.txt').

% Listar todos os jogadores vivos
listar_vivos :-
    findall(Jogador, (jogador(Jogador, vivo, _)), Lista),
    imprimir_lista(Lista).

% Imprimir a lista de jogadores vivos
imprimir_lista([]) :- !.  % Caso base: lista vazia
imprimir_lista([Jogador | Resto]) :-
    writeln(Jogador),  % Imprime o jogador na tela
    imprimir_lista(Resto).  % Chama recursivamente para os outros jogadores
