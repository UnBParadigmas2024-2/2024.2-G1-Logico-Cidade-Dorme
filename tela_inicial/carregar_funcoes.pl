:- dynamic cidadao/1, assassino/1, anjo/1, detetive/1.

/* Função principal para carregar pessoas, atribuir papéis e exibir os resultados */
carregar_papeis() :-
    file_lines('tela_inicial/pessoas_predefinidas.txt', Pessoas),
    distribuir_papeis(Pessoas),
    mostrar_papeis().  % Mostra os papéis atribuídos após carregamento

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

/* Exibe os papéis atribuídos */
mostrar_papeis() :-
    findall(C, cidadao(C), Cidadaos),
    findall(A, assassino(A), Assassinos),
    findall(An, anjo(An), Anjos),
    findall(D, detetive(D), Detetives),
    write('Anjo: '), writeln(Anjos),
    write('Detetive: '), writeln(Detetives),
    write('Assassino: '), writeln(Assassinos),
    write('Cidadaos: '), writeln(Cidadaos).
