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