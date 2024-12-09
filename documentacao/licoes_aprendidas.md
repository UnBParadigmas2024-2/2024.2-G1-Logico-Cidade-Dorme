# **Lições Aprendidas**

## **Introdução**
Durante o desenvolvimento do projeto **"Cidade Dorme"**, utilizamos a linguagem **Prolog** para explorar sua arquitetura e funcionalidade. Prolog é amplamente reconhecido no domínio da lógica e da inteligência artificial, sendo ideal para resolver problemas que envolvem regras e inferências.

Este documento reúne as lições aprendidas, desafios enfrentados e como os conhecimentos adquiridos podem ser aplicados em outros contextos.

## **1. Por que Utilizar Prolog?**
- **Foco em Lógica e Regras**: Prolog é uma linguagem declarativa, o que significa que você descreve "o que" precisa ser feito, em vez de "como" fazer.
- **Facilidade para Modelar Problemas Complexos**: Problemas baseados em relações, como o jogo "Cidade Dorme", podem ser representados com clareza e eficiência.
- **Resolução Automática**: Prolog utiliza motores de inferência, como backtracking, para explorar soluções automaticamente.

## **2. Principais Aprendizados**
<!-- ### **2.1 Arquitetura e Estrutura do Prolog**
- **Fatos, Regras e Consultas**: 
  - Fatos definem o conhecimento básico.
  - Regras combinam fatos para derivar conhecimento novo.
  - Consultas exploram a base de conhecimento.
- **Predicados Dinâmicos**: Aprendemos a declarar e manipular predicados dinâmicos, como `:- dynamic cidadao/1, mafioso/1, medico/1`.

### **2.2 Manipulação de Arquivos**
- **Leitura de Arquivos com Prolog**: 
  - A função `file_lines` foi utilizada para carregar as informações de um arquivo de texto.
  - O Prolog facilita a manipulação de listas para processar os dados lidos.

### **2.3 Distribuição Aleatória**
- Utilizamos o predicado `random/3` para distribuir funções de maneira aleatória, destacando como Prolog pode incorporar lógica não-determinística.

### **2.4 Resolução Recursiva**
- Aprendemos a criar funções recursivas, como `distribuir_funcoes/1`, para percorrer e processar listas. -->

### **2.1 Paradigma Declarativo**
- Prolog é uma linguagem baseada em lógica, onde declaramos fatos e regras para descrever o problema, permitindo que o interpretador encontre soluções automaticamente.  
- Este paradigma nos ajudou a pensar em termos de **o que deve ser resolvido**, em vez de **como resolver**, desafiando nossos modelos mentais habituais de programação imperativa.

### **2.2 Manipulação de Dados**
- Aprendemos a representar dados como fatos e a manipulá-los dinamicamente durante a execução do programa.  
- O uso de predicados dinâmicos mostrou-se essencial para lidar com cenários em que os dados mudam com o progresso do jogo.

### **2.3 Recursividade**
- A recursividade é amplamente utilizada em Prolog para processar listas e resolver problemas iterativamente.  
- Compreendemos a importância de definir condições base para evitar loops infinitos, além de estruturar chamadas recursivas de forma clara e eficiente.

### **2.4 Lógica e Inferência**
- O Prolog se baseia na lógica de **backtracking**, que automatiza a busca por soluções.  
- Exploramos como o interpretador testa condições e retrocede para tentar alternativas, permitindo resolver problemas complexos com poucas linhas de código.

### **2.5 Organização de Regras e Fatos**
- Compreendemos como estruturar nossos programas dividindo fatos, regras e consultas de maneira modular. Isso facilitou tanto o entendimento do código quanto sua manutenção.  

### **2.6 Integração com Arquivos**
- Integramos dados externos ao programa, permitindo que o sistema lesse informações de arquivos e as utilizasse dinamicamente.  
- Esta habilidade é fundamental para desenvolver sistemas que interajam com dados persistentes.

### **2.7 Configuração do Ambiente**
- Aprendemos a configurar o SWI-Prolog e usar comandos básicos para carregar arquivos, depurar e testar o programa.  
- A simplicidade do ambiente facilitou o aprendizado e a experimentação.

## **3. Desafios Enfrentados**
### **3.1 Mudança de Paradigma**
- A transição do pensamento imperativo para o declarativo foi desafiadora, pois precisávamos focar no "o que" em vez do "como".
- Exemplos práticos ajudaram a compreender melhor a lógica de Prolog.

### **3.2 Debugging**
- Prolog não possui um fluxo linear de execução, o que dificultou o rastreamento de problemas inicialmente.
- Utilizamos a consulta `trace/0` para inspecionar o processo de inferência.

### **3.3 Familiarização com SWI-Prolog**
- Configurar o ambiente no SWI-Prolog e entender como carregar arquivos (`[arquivo].`) foi uma curva de aprendizado inicial.


## **4. Conclusão**
O projeto **"Cidade Dorme"** foi uma oportunidade valiosa para explorar a lógica declarativa de Prolog. Embora os desafios iniciais tenham sido significativos, as lições aprendidas demonstram como Prolog pode ser uma linguagem poderosa em cenários específicos. Além disso, o domínio dessa linguagem proporciona uma nova perspectiva sobre como resolver problemas baseados em lógica.
