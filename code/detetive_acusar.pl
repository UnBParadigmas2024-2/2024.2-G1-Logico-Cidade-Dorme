detetive_acusar() :-
    escolher_detetive_mensagem,
    mostrar_vivos_exceto_detetives,
    read(NomeEscolhido),  % Lê o nome escolhido pelo detetive
    downcase_atom(NomeEscolhido, EscolhidoLower),  % Converte o nome para minúsculas
    (   
        assassino(Assassino),  % Obtém o nome do assassino
        downcase_atom(Assassino, AssassinoLower),
        EscolhidoLower = AssassinoLower
    ->  
        write(''), nl,
        write('=============================='), nl,
        write('Parabéns detetive !! Você acertou o assassino!'), nl,
        write(''), nl,
        write('A cidade está em paz novamente graças à sua brilhante dedução.'), nl,
        write('Prepare-se para mais desafios no futuro!'), nl,
        write(''), nl,
        write('Jogo encerrado!'), nl,
        write('=============================='), nl,
        fim_de_jogo
    ;   
        % Detetive errou, jogo continua
        write(''), nl,
        write('=============================='), nl,
        write('O detetive acusou a pessoa errada!'), nl,
        write('O jogo continua...'), nl,
        write('=============================='), nl
    ).