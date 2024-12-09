/* Carrega os arquivos iniciais */
:- ['util/ler_linhas'].
:- [game].
:- ['tela_inicial/carregar_funcoes'].
:- ['util/limpar_banco_de_dados'].
:- ['tela_inicial/tela_inicial'].  % Carregar a tela inicial

/* Inicia o jogo com a tela inicial */
:- tela_inicial.  % Garante que a tela inicial seja exibida
