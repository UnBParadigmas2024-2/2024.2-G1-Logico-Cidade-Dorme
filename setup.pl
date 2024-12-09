/* Carrega os arquivos iniciais */
:- ['util/ler_linhas'].
:- [game].
:- ['tela_inicial/carregar_funcoes'].
:- ['util/limpar_banco_de_dados'].
:- ['tela_inicial/tela_inicial'].

:- write('Setup inicial concluído.').

/* Chama as chamadas necessárias para o setup */
:- carregar_pessoas_como_cidadao().
:- mostrar_pessoas().
:- carregar_funcoes().
:- tela_inicial().

