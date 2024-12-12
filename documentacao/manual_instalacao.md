# **Manual de Instalação da Aplicação**

## **Introdução**
Este documento orienta sobre como configurar e executar o projeto em sua máquina. A aplicação foi desenvolvida em Prolog e simula um jogo interativo baseado em funções atribuídas a personagens, como cidadãos, mafiosos e médicos.

Aqui você encontrará as instruções para instalar as ferramentas necessárias, obter o código do projeto, configurar o ambiente e solucionar possíveis problemas. O objetivo é garantir que você consiga rodar o projeto com sucesso e explorar suas funcionalidades.

## **1. Pré-requisitos**

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

---

## **2. Clonando o Repositório**

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

## **3. Configurando e Executando o Projeto**

1. Verifique os Arquivos Necessários

- Certifique-se de que os arquivos principais do projeto estão presentes:
  - pessoas.txt: Define as pessoas participantes.
  - carregar_funcoes.pl: Código responsável por carregar e distribuir as funções.
  - setup.pl: Arquivo de inicialização que carrega os demais componentes.

2. Inicie o SWI-Prolog No terminal, inicie o ambiente SWI-Prolog com o comando:

   ```prolog
   swipl
   ```

3. Carregue o Arquivo de Configuração Após entrar no SWI-Prolog, carregue o arquivo de setup:

   ```prolog
   ?- [setup].
   ```