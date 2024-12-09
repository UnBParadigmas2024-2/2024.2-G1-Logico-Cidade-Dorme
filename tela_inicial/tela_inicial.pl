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
    write('=============================='), nl,
    escolher_assassino_mensagem,
    write(''), nl,
    write('=============================='), nl,
    mostrar_vivos_exceto_assassinos.
