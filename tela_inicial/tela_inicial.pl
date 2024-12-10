:- dynamic fantasma/1.

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
    format('Milene: ~w Escolha alguém para matar!!!~n', [Assassino]).

escolher_anjo_mensagem() :-
    (bagof(An, anjo(An), [Anjo | _]) ; Anjo = 'Desconhecido'),  % Verifica quem é o anjo
    format('~w: Escolha alguém para salvar!!!~n', [Anjo]).


assassino_matar() :-
    (bagof(V, vivo(V), Vivos) ; Vivos = []),  % Buscar todos os vivos
    read(NomeEscolhido),  % Ler o nome escolhido
    (   (   member(Vivo, Vivos), 
            downcase_atom(NomeEscolhido, NomeEscolhidoLower), 
            downcase_atom(Vivo, VivoLower),
            NomeEscolhidoLower = VivoLower
        ) ->  % Comparar o nome sem sensibilidade a maiúsculas/minúsculas
            retract(vivo(Vivo)),  % Remover da lista de vivos
            adicionar_fantasma(Vivo),  % Passar o nome da pessoa como argumento
            write(''), nl,
    ;   writeln('Nome inválido ou pessoa não encontrada.')
    ).

adicionar_fantasma(Pessoa) :-
    assertz(fantasma(Pessoa)),  % Adiciona a pessoa como fantasma
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
        format('~w Foi salvo!~n', [NomeEscolhido])
    ;   retractall(fantasma(_)),                     % Remove todos os fantasmas da lista
        format('Anjo não conseguiu salvar o morto. ~w Morreu. ~n', [NomeEscolhido])
    ).

/* Iniciar Jogo */
iniciar_jogo :- 
    write(''), nl,
    write('=============================='), nl,
    write('Milene: Noite 1...Todos fechem os olhos !!!'), nl,
    write('=============================='), nl,
    carregar_papeis,  % Não precisamos mais chamar mostrar_papeis aqui
    write(''), nl,
    write('=============================='), nl,
    write('Milene: Noite 2... Todos fechem os olhos !!!'), nl,
    write(''), nl,
    escolher_assassino_mensagem,
    write(''), nl,
    mostrar_vivos_exceto_assassinos,
    write(''), nl,
    assassino_matar,
    write(''), nl,
    mostrar_vivos_exceto_assassinos,
    write(''), nl,
    escolher_anjo_mensagem,
    write(''), nl,
    mostrar_vivos_exceto_anjos,
    write(''), nl,
    anjo_salvar,
    write(''), nl,
    write('VIVOS (MENOS O ANJO):'), nl,
    write(''), nl,
    mostrar_vivos_exceto_anjos.