/* Carrega os arquivos iniciais */
:- [ler_linhas].
:- [game].
:- [carregar_funcoes].
:- [carregar_lugares].
:- [limpar_banco_de_dados].

/* Chama as chamadas necessárias para o setup */
:- carregar_funcoes().
:- verificar_funcoes().
:- carregar_lugares().

:- write('Setup inicial concluído.').