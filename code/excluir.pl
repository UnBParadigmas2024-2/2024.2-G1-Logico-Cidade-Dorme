
excluir_assassinos([], _, []).
excluir_assassinos([V | Rest], Assassinos, VivosFiltrados) :-
    (member(V, Assassinos) ->
        excluir_assassinos(Rest, Assassinos, VivosFiltrados)  
    ;
        excluir_assassinos(Rest, Assassinos, RestFiltrados),
        VivosFiltrados = [V | RestFiltrados]  
    ).

excluir_anjos([], _, []).  % Caso base: lista vazia
excluir_anjos([V | Rest], Anjos, VivosFiltrados) :-
    (member(V, Anjos) ->
        excluir_anjos(Rest, Anjos, VivosFiltrados)  
    ;
        excluir_anjos(Rest, Anjos, RestFiltrados),
        VivosFiltrados = [V | RestFiltrados]       
    ).

excluir_detetives([], _, []).  % Caso base: lista vazia

excluir_detetives([V | Rest], Detetives, VivosFiltrados) :-
    (member(V, Detetives) ->
        excluir_detetives(Rest, Detetives, VivosFiltrados)  % Ignora se for detetive
    ;
        excluir_detetives(Rest, Detetives, RestFiltrados),
        VivosFiltrados = [V | RestFiltrados]       % Mantém na lista se não for detetive
    ).
