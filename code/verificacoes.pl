todos_cidadaos_mortos :-
    % Get all citizens
    bagof(C, cidadao(C), Cidadaos),
    % Check if none of them are alive
    \+ (member(Cidadao, Cidadaos), vivo(Cidadao)).

verificar_fantasma_e_anjos :-
    (   
        anjoVivo(sim)
    ->  writeln('O anjo e o fantasma não são a mesma pessoa!'),
        escolher_anjo_mensagem,
        mostrar_vivos_exceto_anjos,
        anjo_salvar
    ;   
    writeln('O anjo e o fantasma são a mesma pessoa!'),
        retractall(fantasma(_)),
        detetive_acusar
    ).
