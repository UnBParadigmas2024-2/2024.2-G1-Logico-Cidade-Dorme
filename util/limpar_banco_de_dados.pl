/* Limpa as regras definidas em tempo de execucao */
limpar_banco_de_dados :-
    retractall(cidadao(_)),
    retractall(mafioso(_)),
    retractall(medico(_)),
    retractall(lugar(_, _)).