# ParaDigaMais

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: 01<br>
**Paradigma**: Lógico<br>

## Alunos

| Matrícula  | Aluno                          |
| ---------- | ------------------------------ |
| 20/0056981 | Arthur Ferreira Rodrigues      |
| 19/0084600 | Arthur José Nascimento de Lima |
| 19/0134224 | Artur Seppa Reiman             |
| 19/0084731 | Augusto Duraes Camargo         |
| 20/2015948 | Breno Henrique de Souza        |
| 22/2014984 | Edilberto Almeida Cantuaria    |
| 18/0121308 | Giulia Domingues de Alcantara  |
| 17/0034941 | Guilherme Peixoto Lima         |
| 18/0042041 | Gustavo Barbosa de Oliveira    |
| 20/0069322 | Samuel Alves Sato              |

## O que é um paradigma lógico

O paradigma lógico é O paradigma lógico é um estilo de programação baseado na lógica matemática. Nele, o programador define **regras lógicas** e **relações entre elementos**, especificando as condições que devem ser verdadeiras para resolver um problema. O sistema, então, **deduz automaticamente a solução** com base nessas regras, em vez de seguir uma sequência de comandos. Prolog é a principal linguagem associada a esse paradigma, sendo amplamente utilizada em áreas como **inteligência artificial** e **processamento de linguagem natural**. [1]

Aprenda mais sobre o Paradigma Lógico [aqui](documentacao/vantagens_desvantagens.md)

## Sobre o Projeto

O jogo "Cidade Dorme" é um jogo de dinâmica social, no qual os participantes assumem papéis secretos, como cidadãos, mafiosos e outros personagens. A premissa básica envolve todos os jogadores fecharem os olhos (simbolizando o momento em que a cidade "dorme") enquanto os mafiosos, de olhos abertos, escolhem quem será eliminado. [2]

Durante o "dia", os jogadores discutem e tentam deduzir quem são os mafiosos entre eles, votando para eliminar suspeitos. O objetivo principal dos cidadãos é identificar e eliminar os mafiosos, enquanto estes devem permanecer escondidos e eliminar os cidadãos. O jogo combina dedução, estratégia e persuasão, sendo ideal para grupos que gostam de jogos de interação social e argumentação. [2]

### Relação do Paradigma Lógico com o Projeto

O jogo "Cidade Dorme" é relacionado ao paradigma lógico, especialmente utilizando a linguagem **Prolog**, devido à sua estrutura baseada em fatos, regras e deduções. No jogo, os participantes assumem papéis (como assassino, detetive e cidadãos), e a interação entre eles envolve a dedução lógica para identificar os mafiosos ou tomar decisões estratégicas. Esse processo de dedução pode ser modelado em Prolog por meio da definição de fatos que representam os papéis de cada jogador e regras que determinam suas ações e consequências.

Em Prolog, os papéis dos jogadores podem ser representados como fatos básicos, por exemplo, `papel(joao, assassino)` ou `papel(maria, detetive)`. A partir desses fatos, regras lógicas podem ser formuladas para capturar as dinâmicas do jogo, como identificar quem foi eliminado ou deduzir o culpado com base nos padrões de comportamento. Além disso, a capacidade de Prolog de inferir informações a partir de fatos e regras permite modelar a lógica das rodadas do jogo, incluindo momentos como votação, acusação ou salvamento de personagens.

Por fim, a dedução lógica central ao jogo, onde os jogadores devem interpretar as ações de outros participantes para chegar a conclusões, reflete a essência do paradigma lógico. A utilização de Prolog para simular o jogo reforça o aprendizado de conceitos fundamentais do paradigma, como a resolução baseada em inferências e o uso de cláusulas lógicas para resolver problemas. Dessa forma, o jogo "Cidade Dorme" é uma excelente ferramenta para explorar e exemplificar os princípios do paradigma lógico.

### Por que optamos por implementar o jogo "Cidade Dorme"?

Saiba mais sobre a escolha do projeto através [desse link](documentacao/motivos-escolha-do-projeto.md)

## Screenshots

### Fluxograma do Projeto

![fluxo cidade dorme](https://github.com/user-attachments/assets/ed774bda-5e18-4680-bcb2-cefbd9c8bf45)

- OBS: Para maior detalhamento de cada funcionalidade, acesse [esse link](documentacao/passoapasso-uso.md)

## Manual

### Instalação

**Linguagens**: <br>
**Tecnologias**: Sistema Operacional , Compilador, Editor de Texto , Terminal <br>

- Para instalação do projeto, acesse [esse link](documentacao/passoapassoinstalacao.md) e leia o passo a passo.

### Uso

### Manual

#### Como usar o projeto

Primeiramente certifique-se de que está com Prolog instalado.

**Para rodar o projeto basta entrar no swipl**: `swipl` ; 

**Carregue o arquivo setup.pl pelo comando**: `[setup].` ;

## Vídeo

Vídeo disponível no [link](https://youtu.be/W71J1-5DlYg).

## Participações

| Nome do Membro | Contribuição | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) | Comprobatórios |
| -- | -- | -- | -- |
| Arthur Ferreira |  - | Excelente | - |
| Arthur José |  Setup inicial, Regras para ler linhas de um arquivo, Distribuir papeis e lugares para cada pessoa aleatóriamente, Regra para um mafioso matar alguém e para mostrar pessoas e seus locais de origem   | Excelente | - |
| Artur Seppa Reiman |  - | - | - |
| Augusto Duraes |  Código: Adição e refatoração do menu inicial do jogo, Função inicial de distribuição de personagens no jogo ;Documentação: Motivo escolha do projeto | Excelente | [Adição e refatoração do menu inicial do jogo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/c93b2629235c61e4118c4aebad760cfe14e2446f); [Função inicial de distribuição de personagens no jogo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/9d50e65d84a931cf21aa5785fba3b393dab93a85); [Motivo escolha do projeto](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/d848287afab0ff7704a658bf62e50371636c8201); |                                                                                                                                        
| Breno |  - | - | - |
| Giulia | Código: Fluxo do assassino matar qualquer um menos a si mesmo, fluxo do anjo salvar qualquer um menos a si mesmo (se vivo) e não salvar se morto, fluxo do detetive acusar qualquer um menos a si mesmo e ao anjo se tiver morto; Documentação: Sobre o paradigma, sobre o projeto, relação do paradigma com o projeto criação do fluxo do projeto | Excelente | [Sobre o paradigma](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/984c6202e820d4d3c30262a26fa47c8c60f2d8de); [Infos do Projeto e Fluxo do jogo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/06084bfe84a0d487e530ecd9d532abcc3fa057b3); [Assassino Mata](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/fd8af2f847f8e5817a34663d373a04baf92ce82c); [Anjo Salva](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/e4b2a7f33c4575b5a9f9cfc3116147fedd6574b7); [Case: Anjo morre](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/fd5be27f231a798731c3d028e83c6a5888b3166c); [Detetive Acusa](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/2f855a999ed72b306f754e3b9bde7e1787c8e482); [Detetive não pode acusar o anjo morto](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/d7bd33ab649d08e21b97b83c4f8381f032b226d0); [Adicionando o cargo de acusado](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/01035d8283d7fa4ef8fb52b6fef81a540dc9d776) |      
| Gustavo Barbosa | - | - | - |      
| Guilherme Peixoto | - | - | - |                                                                                                                  
| Samuel | - | - | - |                                                                               

## Outros

### Lições Aprendidas

- 

### Percepções

- 

### Contribuições e Fragilidades

- Contribuições: 
- Fragilidades:

### Trabalhos Futuros

A análise do projeto em questão revela a necessidade de aprimoramentos tanto em termos de usabilidade quanto de arquitetura.

- 
Como sugestão para trabalhos futuros, além do presente projeto, propõem-se as seguintes implementações em Haskell:

- 
## Fontes

[1] TRIPLETEN. Paradigmas de programação: o que são e quais os principais? _TripleTen_, [s.d.]. Disponível em: <https://tripleten.com.br/blog/paradigmas-de-programacao-o-que-sao-e-quais-os-principais/#:~:text=Al%C3%A9m%20do%20paradigma%20imperativo%20e,a%20partir%20das%20informa%C3%A7%C3%B5es%20fornecidas>. Acesso em: 18 nov. 2024.

[2] NARDELLI, Luciana. *Cidade dorme*. Diário da Região, Painel de Ideias, 17 set. 2019. Disponível em: <https://www.diariodaregiao.com.br/opiniao/paineldeideias/cidade-dorme-1.121879>. Acesso em: 3 dez. 2024.
