# Relação do Paradigma Lógico com o jogo "Cidade Dorme"

"Cidade Dorme" é um jogo de dedução social que envolve jogadores assumindo diferentes papéis, como cidadãos, mafiosos, entre outros, com o objetivo de eliminar o time adversário. A essência do jogo reside na lógica, dedução e estratégias baseadas em informações parciais, o que se alinha perfeitamente com o paradigma da programação lógica.

O paradigma lógico é baseado na ideia de representar conhecimento e regras do mundo através de declarações lógicas. Em vez de especificar como realizar uma tarefa passo a passo, a programação lógica se concentra em declarar relações e lógica que descrevem o problema. Prolog, como uma linguagem de programação lógica, é ideal para representar cenários onde a dedução e a resolução de problemas são centrais, como em "Cidade Dorme".

## Justificativas para Implementação em Prolog

1. **Representação de Regras e Fatos**: 
   Prolog permite representar facilmente regras e fatos do jogo. Por exemplo, podemos definir fatos sobre quem é cidadão ou mafioso e regras para determinar quando um time venceu. Essa capacidade de expressar conhecimento declarativo é fundamental para capturar a lógica do jogo.

2. **Inferência Automática**: 
   Prolog possui um mecanismo de inferência embutido que pode ser utilizado para deduzir novas informações a partir das regras e fatos conhecidos. Isso é útil em "Cidade Dorme" para, por exemplo, deduzir a identidade de jogadores com base nas ações observadas e nas declarações feitas durante o jogo.

3. **Backtracking**: 
   A técnica de backtracking de Prolog é útil para explorar diferentes hipóteses ou cenários, algo comum em jogos de dedução. Se uma suposição leva a um impasse, o backtracking permite que o sistema retorne e tente outras possibilidades, simulando o processo de eliminação e tentativa dos jogadores.

4. **Consulta Interativa**: 
   Prolog permite consultas interativas, possibilitando que o jogo se desenvolva de maneira dinâmica, com jogadores interagindo e a lógica do jogo se adaptando às suas ações e decisões.

5. **Abordagem Declarativa**: 
   A abordagem declarativa de Prolog permite focar na lógica do jogo sem a complexidade de gerenciar estados ou sequências específicas de ações, facilitando a manutenção e a extensão do jogo.

Em resumo, a implementação de "Cidade Dorme" em Prolog é justificada por sua capacidade de representar lógica de forma clara e concisa, utilizar inferência automática e backtracking para explorar deduções e hipóteses, e oferecer uma interação dinâmica e declarativa que reflete a natureza do jogo. Essas características tornam Prolog uma escolha natural para capturar a essência lógica e dedutiva de "Cidade Dorme".