
mostrar_vivos_exceto_assassinos() :-
    (bagof(V, vivo(V), Vivos) ; Vivos = []),
    (bagof(A, assassino(A), Assassinos) ; Assassinos = []),
    excluir_assassinos(Vivos, Assassinos, VivosFiltrados),
    sort(VivosFiltrados, VivosOrdenados),  
    listar_com_numeros(VivosOrdenados, 0).

mostrar_vivos_exceto_anjos() :-
    (bagof(V, vivo(V), Vivos) ; Vivos = []),       
    (bagof(A, anjo(A), Anjos) ; Anjos = []),       
    (bagof(F, fantasma(F), Fantasmas) ; Fantasmas = []), 
    excluir_anjos(Vivos, Anjos, VivosFiltrados),  
    append(VivosFiltrados, Fantasmas, Mesclados), 
    sort(Mesclados, ListaOrdenada),             
    listar_com_numeros(ListaOrdenada, 0). 

mostrar_vivos_exceto_detetives() :-
    (bagof(V, vivo(V), Vivos) ; Vivos = []),       
    (bagof(D, detetive(D), Detetives) ; Detetives = []),       
    (bagof(F, fantasma(F), Fantasmas) ; Fantasmas = []), 
    excluir_detetives(Vivos, Detetives, VivosFiltrados),  
    append(VivosFiltrados, Fantasmas, Mesclados), 
    sort(Mesclados, ListaOrdenada),              
    listar_com_numeros(ListaOrdenada, 0). 

listar_todos_vivos() :-
    (bagof(V, vivo(V), Vivos) ; Vivos = []),  % Obtém todos os vivos ou uma lista vazia
    sort(Vivos, ListaOrdenada),               % Ordena a lista de vivos
    listar_com_numeros(ListaOrdenada, 0).     % Exibe a lista com numeração

listar_todos_fantasmas() :-
    (bagof(F, fantasma(F), Fantasmas) ; Fantasmas = []),  % Obtém todos os fantasmas ou uma lista vazia
    sort(Fantasmas, ListaOrdenada),                      % Ordena a lista de fantasmas
    listar_com_numeros(ListaOrdenada, 0).                 % Exibe a lista com numeração


listar_com_numeros([], _).
listar_com_numeros([Nome | Rest], Numero) :-
    write(Numero), write('. '), writeln(Nome),
    NovoNumero is Numero + 1,
    listar_com_numeros(Rest, NovoNumero).

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