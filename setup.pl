/* Carrega os arquivos iniciais */
:- [ler_linhas].
:- [game].
:- [carregar_funcoes].
:- [carregar_lugares].
:- [limpar_banco_de_dados].
:- [tela_inicial].

/* Chama as chamadas necessárias para o setup */
:- carregar_funcoes().
:- carregar_lugares().
:- tela_inicial().

:- write('Setup inicial concluído.').