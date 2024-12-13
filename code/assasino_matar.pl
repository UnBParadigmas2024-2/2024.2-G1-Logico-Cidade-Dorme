assassino_matar() :-
    (bagof(V, vivo(V), Vivos) ; Vivos = []),
    escolher_assassino_mensagem,
    mostrar_vivos_exceto_assassinos,
    read(NomeEscolhido),
    (   member(Vivo, Vivos),
        downcase_atom(NomeEscolhido, NomeEscolhidoLower),
        downcase_atom(Vivo, VivoLower),
        NomeEscolhidoLower = VivoLower
    ->
        bagof(D, detetive(D), [Detetive | _]),
        downcase_atom(Detetive, DetetiveLower),
        (NomeEscolhidoLower = DetetiveLower ->
            retract(vivo(Vivo)),
            adicionar_fantasma(Vivo),
            definir_vencedor(assassino),
            write(''), nl,
            write('=============================='), nl,
            write('O assassino matou o detetive!'), nl,
            write('O assassino venceu o jogo!'), nl,
            write('=============================='), nl,
            fim_de_jogo
        ;   
            % Se não matou o detetive, continua normalmente
            retract(vivo(Vivo)),
            adicionar_fantasma(Vivo),
            (anjo(Vivo) ->  matar_anjo; true),

            (todos_cidadaos_mortos ->
                retractall(vencedor(_)),
                assertz(vencedor(assassino)),
                write(''), nl,
                write('=============================='), nl,
                write('O assassino matou todos os cidadãos!'), nl,
                write('O assassino venceu o jogo!'), nl,
                write('=============================='), nl,
                fim_de_jogo
            ;   true  % Continue game normally,
            )

        )
    ;
        writeln('Nome inválido ou pessoa não encontrada.')
    ).
