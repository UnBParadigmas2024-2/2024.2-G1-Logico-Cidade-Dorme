:- dynamic cidadao/1, assassino/1, anjo/1, detetive/1, vivo/1.

/* Função principal para carregar pessoas, atribuir papéis e exibir os resultados */    
carregar_papeis() :-
    retractall(vivo(_)),
    file_lines('tela_inicial/pessoas_predefinidas.txt', Pessoas),
    distribuir_papeis(Pessoas),
    iniciar_vivo(Pessoas),
    mostrar_papeis().  

iniciar_vivo([]).
iniciar_vivo([Pessoa | Rest]) :-
    assertz(vivo(Pessoa)),
    iniciar_vivo(Rest).

mostrar_vivos_exceto_assassinos() :-
    (bagof(V, vivo(V), Vivos) ; Vivos = []),
    (bagof(A, assassino(A), Assassinos) ; Assassinos = []),
    excluir_assassinos(Vivos, Assassinos, VivosFiltrados),
    sort(VivosFiltrados, VivosOrdenados),  % Ordena alfabeticamente
    listar_com_numeros(VivosOrdenados, 0). % Inicia a listagem com números

excluir_assassinos([], _, []).
excluir_assassinos([V | Rest], Assassinos, VivosFiltrados) :-
    (member(V, Assassinos) ->
        excluir_assassinos(Rest, Assassinos, VivosFiltrados)  % Ignora se é assassino
    ;
        excluir_assassinos(Rest, Assassinos, RestFiltrados),
        VivosFiltrados = [V | RestFiltrados]  % Mantém na lista
    ).

listar_com_numeros([], _).
listar_com_numeros([Nome | Rest], Numero) :-
    write(Numero), write('. '), writeln(Nome),
    NovoNumero is Numero + 1,
    listar_com_numeros(Rest, NovoNumero).


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
    (bagof(V, vivo(V), Vivos) ; Vivos = []),
    write('Anjo: '), writeln(Anjos),
    write('Detetive: '), writeln(Detetives),
    write('Assassino: '), writeln(Assassinos),
    write('Cidadaos: '), writeln(Cidadaos),
    write('Vivos: '), writeln(Vivos).