:- dynamic fantasma/1, acusado/1.

/* Tela inicial */
tela_inicial :-
    write('=============================='), nl,
    write('Bem-vindo ao Jogo Cidade Dorme!'), nl,
    write('=============================='), nl,
    write('Escolha uma das opcoes abaixo:'), nl,
    write('1. Ver Regras'), nl,
    write('2. Jogar'), nl,
    write('3. Sair'), nl,
    write('Digite sua escolha (1, 2 ou 3) + . : '),
    read(Opcao),
    processar_opcao(Opcao).

/* Processar Opcao */
processar_opcao(1) :- mostrar_regras, tela_inicial.
processar_opcao(2) :- iniciar_jogo.  % Inicia o jogo após a opção 2
processar_opcao(3) :- write('Obrigado por jogar! Ate a proxima!'), nl, halt.  /* Aqui */
processar_opcao(_) :- 
    write('Opcao invalida. Tente novamente.'), nl, 
    tela_inicial.

/* Mostrar Regras */
mostrar_regras :-
    write(''), nl,
    write('=============================='), nl,
    write('               Regras'), nl,
    write('=============================='), nl,
    write('1. Cada jogador assume um papel secreto.'), nl,
    write('2. Existem papeis como Assassino, Anjo, Detetive e Cidadao.'), nl,
    write('3. Durante a noite, o Assassino escolhe uma vitima.'), nl,
    write('4. O Anjo pode proteger uma pessoa por noite.'), nl,
    write('5. O Detetive pode investigar uma pessoa por noite.'), nl,
    write('6. Os Cidadaos tentam identificar o Assassino.'), nl,
    write('7. O jogo termina quando o Assassino for descoberto ou todos os outros morrerem.'), nl,
    write('=============================='), nl,
    write(''), nl.

escolher_assassino_mensagem() :-
    (bagof(A, assassino(A), [Assassino | _]) ; Assassino = 'Desconhecido'),
    write(''), nl,
    format('Milene: ~w, Escolha alguém para matar!!!~n', [Assassino]),
    write(''), nl.

escolher_anjo_mensagem() :-
    (bagof(An, anjo(An), [Anjo | _]) ; Anjo = 'Desconhecido'),  % Verifica quem é o anjo
    write(''), nl,
    format('Milene: ~w, Escolha alguém para salvar!!!~n', [Anjo]),
    write(''), nl.

escolher_detetive_mensagem() :-
    (bagof(D, detetive(D), [Detetive | _]) ; Detetive = 'Desconhecido'),  % Verifica quem é o detetive
    write(''), nl,
    format('Milene: ~w, Escolha alguém para acusar!!!~n', [Detetive]),
    write(''), nl.


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
            % Se matou o detetive, assassino vence
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
            (anjo(Vivo) ->  matar_anjo; true)
        )
    ;
        writeln('Nome inválido ou pessoa não encontrada.')
    ).



adicionar_fantasma(Pessoa) :-
    assertz(fantasma(Pessoa)),  % Adiciona a pessoa como fantasma,
    write(''), nl,
    format('~w agora é um(a) fantasma!~n', [Pessoa]).

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

detetive_acusar() :-
    escolher_detetive_mensagem,
    mostrar_vivos_exceto_detetives,
    read(NomeEscolhido),  % Lê o nome escolhido pelo detetive
    downcase_atom(NomeEscolhido, EscolhidoLower),  % Converte o nome para minúsculas
    assertz(acusado(EscolhidoLower)),  % Adiciona o nome do acusado
    retractall(fantasma(_)),  % Remove qualquer informação sobre fantasmas
    write(''), nl,
    format('~w foi acusado!~n', [NomeEscolhido]).


/* Iniciar Jogo */
iniciar_jogo :- 
    write(''), nl,
    write('=============================='), nl,
    write('Milene: Noite 1...Todos fechem os olhos !!!'), nl,
    write('=============================='), nl,
    carregar_papeis,  % Não precisamos mais chamar mostrar_papeis aqui
    nova_rodada.
