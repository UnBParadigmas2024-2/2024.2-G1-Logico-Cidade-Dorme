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

### Adaptações do Projeto

O jogo desenvolvido é uma adaptação do clássico "Cidade Dorme", incorporando algumas mudanças para torná-lo mais dinâmico e adequado à proposta tecnológica:

1. Morte do Anjo: Quando o anjo é eliminado, o detetive não pode mais acusá-lo como culpado. Além disso, todos os jogadores são informados durante a noite que o anjo foi eliminado, o que altera as estratégias de dedução.
2. Uso do Notebook: Para jogar, o notebook deve permanecer com o narrador, que será o único a ler as informações apresentadas no terminal. Isso preserva o sigilo dos papéis e mantém a organização do jogo.
3. Personagens Pré-Definidos: Os papéis dos jogadores são definidos previamente, e cada participante deve escolher o personagem que deseja interpretar antes do início do jogo. Após essa escolha, os papéis são atribuídos, garantindo uma distribuição clara e equilibrada das funções.
   Essas adaptações introduzem elementos que facilitam a administração do jogo e reforçam a mecânica de dedução, proporcionando uma experiência adaptada ao contexto digital.

### Relação do Paradigma Lógico com o Projeto

O jogo "Cidade Dorme" é relacionado ao paradigma lógico, especialmente utilizando a linguagem **Prolog**, devido à sua estrutura baseada em fatos, regras e deduções. No jogo, os participantes assumem papéis (como assassino, detetive e cidadãos), e a interação entre eles envolve a dedução lógica para identificar os mafiosos ou tomar decisões estratégicas. Esse processo de dedução pode ser modelado em Prolog por meio da definição de fatos que representam os papéis de cada jogador e regras que determinam suas ações e consequências.

Em Prolog, os papéis dos jogadores podem ser representados como fatos básicos, por exemplo, `papel(joao, assassino)` ou `papel(maria, detetive)`. A partir desses fatos, regras lógicas podem ser formuladas para capturar as dinâmicas do jogo, como identificar quem foi eliminado ou deduzir o culpado com base nos padrões de comportamento. Além disso, a capacidade de Prolog de inferir informações a partir de fatos e regras permite modelar a lógica das rodadas do jogo, incluindo momentos como votação, acusação ou salvamento de personagens.

Por fim, a dedução lógica central ao jogo, onde os jogadores devem interpretar as ações de outros participantes para chegar a conclusões, reflete a essência do paradigma lógico. A utilização de Prolog para simular o jogo reforça o aprendizado de conceitos fundamentais do paradigma, como a resolução baseada em inferências e o uso de cláusulas lógicas para resolver problemas. Dessa forma, o jogo "Cidade Dorme" é uma excelente ferramenta para explorar e exemplificar os princípios do paradigma lógico.

### Por que optamos por implementar o jogo "Cidade Dorme"?

Saiba mais sobre a escolha do projeto através [desse link](documentacao/motivos-escolha-do-projeto.md)

## Screenshots

### Fluxograma do Projeto

![fluxo cidade dorme](https://github.com/user-attachments/assets/8c1c8d9d-e95d-42f0-9d16-1450428f45f0)

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
#### **1. Pré-requisitos**

Certifique-se de que o ambiente de sua máquina atende aos seguintes requisitos:

- **Sistema Operacional**: Linux (recomendado: Ubuntu 20.04 ou superior) ou Windows com WSL habilitado.
- **Git**: Ferramenta de controle de versão, utilizada para obtenção de código do projeto.

  - Instale com:
    - **No Linux**:
      ```bash
      sudo apt update
      sudo apt install git
      ```
    - **No Windows**: Baixe o instalador em [https://git-scm.com](https://git-scm.com) e siga as instruções de instalação.

- **SWI-Prolog**: Ambiente para execução de Prolog que permite a execução do código.
  - Instale com:
    - **No Linux**:
      ```bash
      sudo apt update
      sudo apt install swi-prolog
      ```
    - **No Windows**: Baixe o instalador em [https://www.swi-prolog.org](https://www.swi-prolog.org).

#### **2. Clonando o Repositório**

1. Navegue até a pasta onde deseja instalar o projeto:

   ```bash
   cd /caminho/para/sua/pasta
   ```

2. Clone o repositório:

   ```bash
   git clone https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme.git
   ```

3. Acesse o arquivo:
   ```bash
   cd 2024.2-G1-Logico-Cidade-Dorme
   ```

#### **3. Configurando e Executando o Projeto**

1. Inicie o SWI-Prolog No terminal, inicie o ambiente SWI-Prolog com o comando:

   ```prolog
   swipl
   ```

2. Carregue o Arquivo de Configuração Após entrar no SWI-Prolog, carregue o arquivo de setup:

   ```prolog
   [setup].
   ```

## Vídeo

Vídeo disponível no [link](https://youtu.be/W71J1-5DlYg).

## Participações

| Nome do Membro     | Contribuição                                                                                                                                                                                                                                                                                                                                       | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) | Comprobatórios                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Arthur Ferreira    | Código: Lógica para listagem de pessoas. Menu com regras do jogo. Refatorações para garantir desacoplamento. Documentação: Vantagens.                                                                                                                                                                                                              | Excelente                                                                      | [Menu de regras](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/4f4188be794f9de109d1f863a2b4b1cfa3c78b88), [Mostrar pessoas](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/7aa9aa58b57df3e2635f16c868c5fe46198c67e2), [Vantagens](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/42dec05e2afcfcb4152625e9204984cc2fbbd661) e [refatoracões](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commits?author=ArthurFerreiraRodrigues).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Arthur José        | Setup inicial do jogo, Primeiro fluxo: Começo do Jogo, Regras para ler linhas de um arquivo, Distribuir papeis para cada pessoa aleatóriamente, mostrar pessoas e funcoes de origem e pequenas refatoracoes, auxilei integrantes com duvidas sobre prolog.                                                                                         | Excelente                                                                      | [ler linhas de um arquivo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/da534cf7227c95797f24fca25857445a3cec7f3c); [carregar pessoas de um arquivo e atribuir funcoes](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/3bb149780a0cb55f0482ce17f87a814e104c87bc); [documentacao desvantagens](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/4afd42e5baddaee3d1b1e26f7bd12e04dc73ad18); [Centralizar a inicializacao do jogo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/2254499a6a37a829102a476dc79df901285e8d97)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Artur Seppa Reiman | Código: Finalização de jogo quando o detetive acusa o assasino; Documentação: Manual de instalação; Trabalhos Futuros; Lições Aprendidas;                                                                                                                                                                                                          | Excelente                                                                      | [Finalização de jogo quando o detetive acusa o assasino](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/d324aaff6f39b864635d0d4bdfdba8d74ef553e0); [Manual de instalação](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/15263d5a7468edf717a8fbb2fbadd21c9126a3e1); [Trabalhos Futuros](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/d3ada52758188757e8335222ea9dfb2e8dc0a53a); [Lições Aprendidas](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/d06e833ac1113314b6dfd5cc66088e4ee3bfd65d);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Augusto Duraes     | Código: Adição e refatoração do menu inicial do jogo, Função inicial de distribuição de personagens no jogo ;Documentação: Motivo escolha do projeto                                                                                                                                                                                               | Excelente                                                                      | [Adição e refatoração do menu inicial do jogo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/c93b2629235c61e4118c4aebad760cfe14e2446f); [Função inicial de distribuição de personagens no jogo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/9d50e65d84a931cf21aa5785fba3b393dab93a85); [Motivo escolha do projeto](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/d848287afab0ff7704a658bf62e50371636c8201);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Breno              | Código: correções setup inicial, fluxo do assassino matar, fluxo do anjo salvar, verificar se o anjo e fantasma são os mesmos, detetive acusar; Documentação: adaptações feitas no projeto                                                                                                                                                         | Excelente                                                                      | [Correção Setup](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/84ddc999d59c5f45200c6ec2857e0a5b90b20907); [Anjo Salvar Morto](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/e4b2a7f33c4575b5a9f9cfc3116147fedd6574b7); [Verificar fantasma e anjo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/fd5be27f231a798731c3d028e83c6a5888b3166c); [Adiciona lista personagens que podem ser salvos](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/fccee8d93a196d2f6131900c4adf23abf35d2c21); [Assassino mata, anjo salva, detetive acusa](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/2f855a999ed72b306f754e3b9bde7e1787c8e482); [Matar](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/fd8af2f847f8e5817a34663d373a04baf92ce82c); [Adaptações](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/3dad5e357fec0bf4348e55fd8a17b1598cbcae96)                                                                                                                                     |
| Giulia             | Código: Fluxo do assassino matar qualquer um menos a si mesmo, fluxo do anjo salvar qualquer um menos a si mesmo (se vivo) e não salvar se morto, fluxo do detetive acusar qualquer um menos a si mesmo e ao anjo se tiver morto; Documentação: Sobre o paradigma, sobre o projeto, relação do paradigma com o projeto criação do fluxo do projeto | Excelente                                                                      | [Sobre o paradigma](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/984c6202e820d4d3c30262a26fa47c8c60f2d8de); [Infos do Projeto e Fluxo do jogo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/06084bfe84a0d487e530ecd9d532abcc3fa057b3); [Assassino Mata](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/fd8af2f847f8e5817a34663d373a04baf92ce82c); [Anjo Salva](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/e4b2a7f33c4575b5a9f9cfc3116147fedd6574b7); [Case: Anjo morre](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/fd5be27f231a798731c3d028e83c6a5888b3166c); [Detetive Acusa](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/2f855a999ed72b306f754e3b9bde7e1787c8e482); [Detetive não pode acusar o anjo morto](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/d7bd33ab649d08e21b97b83c4f8381f032b226d0); [Adicionando o cargo de acusado](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/01035d8283d7fa4ef8fb52b6fef81a540dc9d776) |
| Gustavo Barbosa    | Código: ajustes no fluxo do anjo, resolução de bug ao matar cidadão                                                                                                                                                                                                                                                                                | Excelente                                                                      | [Melhorias no fluxo do anjo](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/f2ab5040a8cb0a27a06b3f7648058c3a9cd6795b);[Bug ao matar cidadão](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/53d65f71b9420dc16adf1dd9b07f676b900b095a)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Guilherme Peixoto  | Código: Se detetive acusa o assassino - ganham o jogo (Participação), Se assassino mata todos os cidadãos (menos o detetive) - jogo encerra. Documentação: Trabalhos Futuros; Lições Aprendidas;                                                                                                                                                   | Excelente                                                                      | [jogo finaliza quando assassino mata todos os cidadãos](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/08328668f7cf3699e9001e70cfcdc16558f5d2c8); [Reinicialização do jogo quando assassino mata detetive](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/70947a76adb351f988f17ca387f5a09fc0462d60); [Percepções e contribuições e fragilidades](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/257e76592b2d3c6e0ee395edded759731d49540a); -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Samuel             | Modularização do código para facilitar implementação dos fluxos de vencedores e nova rodada. Correção de bugs relacionado ao fluxo do anjo morto                                                                                                                                                                                                   | Excelente                                                                      | [Modularização](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/0bc2c6e123273ec8c6889c4e1d7a3c95516e7e75); [Correção de bugs](https://github.com/UnBParadigmas2024-2/2024.2-G1-Logico-Cidade-Dorme/commit/95fdcf5e6d1c94b7e36ae30b52bb699f23454e33)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |

## Outros

### Lições Aprendidas

-
#### Subgrupo 1 (Augusto D. Camargo & Arthur Ferreira & Arthur Lima):

1. **Compreensão da Lógica Declarativa**: Prolog é uma linguagem baseada em lógica declarativa, o que nos ensina a descrever "o que" queremos alcançar, em vez de "como" alcançá-lo. Isso requeriu o exercício de uma nova forma de pensar em termos de relações lógicas e regras.
2. **Trabalho com Estruturas de Dados em Prolog**: Aprendemos a lidar com listas, fatos e regras, manipulando esses elementos para representar o estado do jogo e as interações entre os jogadores.
3. **Desenvolvimento de Algoritmos de Interação e Controle de Fluxo**: Criar um jogo requer controle cuidadoso do fluxo de jogo e das interações entre os jogadores. Desenvolvemos algoritmos para gerenciar turnos, verificar condições de vitória e coordenar ações dos jogadores.
4. **Debugging e Testes em Prolog**: Identificar e corrigir erros em Prolog pode ser desafiador. Desenvolvemos novas estratégias para testar e depurar o código, como o uso de rastreamento para entender o fluxo lógico.

#### Subgrupo 2 (Artur Seppa Reiman & Guilherme Peixoto):

1. **Adaptação à Sintaxe de Prolog:** A sintaxe de Prolog, diferente das linguagens tradicionais, nos desafiou a pensar de forma mais precisa na estrutura lógica das regras e consultas.
2. **Uso de Predicados para Resolver Problemas:** Entendemos como construir e combinar predicados para modelar situações complexas, como estados do jogo e condições de vitória.
3. **Pensamento Lógico Aplicado ao Debugging:** A depuração em Prolog nos forçou a pensar logicamente sobre cada etapa do código, ajudando a identificar problemas antes que eles afetassem o fluxo do jogo.
   
#### Subgrupo 3 (Edilberto Cantuaria & Gustavo Barbosa & Samuel Sato):

1. **Domínio da Lógica Declarativa:** Trabalhar com Prolog nos ensinou a pensar de forma declarativa, focando em descrever o resultado esperado em vez de detalhar os passos para alcançá-lo. Esse paradigma exigiu o desenvolvimento de uma nova forma de raciocínio, baseada em relações e regras lógicas.

2. **Manipulação de Estruturas de Dados:** Aprendemos a utilizar listas, fatos e regras para representar estados de jogo e interações, explorando as capacidades do Prolog para modelar cenários complexos de maneira eficiente.

3. **Criação de Algoritmos Baseados em Lógica:** Projetar e implementar algoritmos em Prolog nos permitiu controlar o fluxo do jogo, gerenciar turnos, verificar condições de vitória e coordenar ações entre os jogadores, consolidando habilidades de planejamento lógico.

4. **Desenvolvimento de Estratégias de Debugging:** A depuração em Prolog demandou abordagens ativas, como o uso de rastreamento lógico para identificar erros e analisar o fluxo do programa, aprimorando nossa capacidade de localizar e resolver problemas de maneira sistemática.

5. **Integração do Pensamento Lógico:** Ao longo do projeto, fortalecemos nossa habilidade de raciocínio lógico que nos possibilitou construir soluções sólidas quanto para garantir a qualidade do código por meio de testes e validações contínuas.

### Percepções

-
- Linguagem com uma curva de aprendizado íngrime.
- Sintaxe declarativa pode ser um desafio para quem vem de linguágens orientadas a objeto.
- É interessante para modelar sitemas baseados em regras, em que são utilizadas um conjunto de regras lógicas para serem tomadas decisões

### Contribuições e Fragilidades

- **Contribuições:**
  - Desenvolvimento do jogo "Cidade Dorme", com regras equivalentes ao jogo na vida real, adaptadas para a metodologia da disciplina e ao contexto acadêmico.
  - Soluções declarativas e lógicas foram úteis para modelar as regras de negócio de forma clara e direta.
  - Aprimoramento das interações entre os jogadores, utilizando algoritmos baseados em lógica para gerenciar turnos e condições de vitória.
  - Implementação de um fluxo de jogo dinâmico, explorando a dedução lógica para simular as decisões dos participantes.
  - Utilização eficiente de Prolog para representar papéis dos jogadores e modelar suas interações por meio de fatos e regras.

- **Fragilidades:**
  - Adaptação ao paradigma lógico foi um desafio inicial para a equipe, impactando o ritmo de desenvolvimento.
  - Sintaxe declarativa e abordagem lógica do Prolog apresentaram uma curva de aprendizado íngreme, o que impactou o tempo necessário para implementar funcionalidades complexas.
  - Limitações da equipe em depuração inicial de código Prolog, devido à falta de familiaridade com ferramentas e técnicas específicas de debugging.
  - Dificuldade em balancear as regras do jogo durante a fase de modelagem, resultando em ajustes posteriores para garantir a equidade e diversão no fluxo do jogo.


### Trabalhos Futuros

A análise do projeto em questão revela a necessidade de aprimoramentos tanto em termos de usabilidade quanto de arquitetura.

Como sugestão para trabalhos futuros, além do presente projeto, propõem-se as seguintes implementações em Prolog:
- **Desafio do Einsten:** pode ser utilizado no desafio de lógica de Einstein para modelar as restrições do problema como fatos e regras, permitindo que o motor lógico da linguagem explore todas as combinações possíveis e encontre a solução que satisfaz todas as condições. Essa abordagem automatiza o raciocínio lógico, eliminando inconsistências de forma eficiente.
- **Simulação de uma torre de controle de um aeroporto:** o Prolog pode ser aplicado ao controle de voos por sua capacidade de lidar com regras, fatos e inferências lógicas, sendo possível modelar rotas, horários, impor restrições de tráfego aéreo, condições meteorológicas e manutenção de aeronaves como fatos e regras além de permitir consultas complexas, como identificar conexões viáveis entre voos, otimizar rotas e garantir a segurança e eficiência no planejamento, utilizando lógica declarativa para verificar restrições e tomar decisões de maneira automatizada.
- **Adaptação do jogo Akinator**:O jogo Akinator, que adivinha o personagem pensado pelo jogador com base em perguntas e respostas, é um exemplo clássico de aplicação de lógica e inteligência artificial, que, conforme dito anteriormente nesta documentação, é uma das área de aplicação do Prolog. O Akinator pode ser implementado utilizando uma base de conhecimento composta por fatos (personagens e suas características) e regras que relacionam as respostas do usuário às hipóteses. O motor lógico do Prolog permite inferir a solução através de um sistema de perguntas dinâmico, eliminando possibilidades inconsistentes até chegar à resposta correta, tornando-o adequado para construir um sistema baseado em lógica dedutiva e interativa como esse. 

## Fontes

[1] TRIPLETEN. Paradigmas de programação: o que são e quais os principais? _TripleTen_, [s.d.]. Disponível em: <https://tripleten.com.br/blog/paradigmas-de-programacao-o-que-sao-e-quais-os-principais/#:~:text=Al%C3%A9m%20do%20paradigma%20imperativo%20e,a%20partir%20das%20informa%C3%A7%C3%B5es%20fornecidas>. Acesso em: 18 nov. 2024.

[2] NARDELLI, Luciana. _Cidade dorme_. Diário da Região, Painel de Ideias, 17 set. 2019. Disponível em: <https://www.diariodaregiao.com.br/opiniao/paineldeideias/cidade-dorme-1.121879>. Acesso em: 3 dez. 2024.
