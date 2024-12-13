:- dynamic cidadao/1, assassino/1, anjo/1, detetive/1, vivo/1.

/* Função principal para carregar pessoas, atribuir papéis e exibir os resultados */
carregar_papeis() :-
    retractall(vivo(_)),
    file_lines('code/carregar_funcoes/pessoas_predefinidas.txt', Pessoas),
    distribuir_papeis(Pessoas),
    iniciar_vivo(Pessoas),
    mostrar_papeis().  

iniciar_vivo([]).
iniciar_vivo([Pessoa | Rest]) :-
    assertz(vivo(Pessoa)),
    iniciar_vivo(Rest).

/* Lê o arquivo e distribui os papéis */
distribuir_papeis(Pessoas) :-
    random_permutation(Pessoas, PessoasEmbaralhadas), % Embaralha as pessoas
    distribuir_papeis_aleatorios(PessoasEmbaralhadas).

/* Atribui os papéis aleatoriamente */
distribuir_papeis_aleatorios([Anjo, Detetive, Assassino | Restantes]) :-
    retractall(cidadao(_)),
    retractall(assassino(_)),
    retractall(anjo(_)),
    retractall(detetive(_)),
    assertz(anjo(Anjo)),
    assertz(detetive(Detetive)),
    assertz(assassino(Assassino)),
    atribuir_restantes_como_cidadaos(Restantes).

/* Atribui os restantes como cidadão */
atribuir_restantes_como_cidadaos([]).
atribuir_restantes_como_cidadaos([Pessoa | Rest]) :-
    assertz(cidadao(Pessoa)),
    atribuir_restantes_como_cidadaos(Rest).

