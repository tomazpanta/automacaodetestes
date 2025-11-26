# 🧪 Projeto  - QA: Automação de Testes E2E (Wikipédia)

Este repositório contém o projeto prático da avaliação **VA02**, focado em automação de testes End-to-End (E2E) utilizando **Cypress** com **Cucumber (BDD)**.

## 📋 Sobre o Projeto

O objetivo do trabalho é garantir a funcionalidade de um site público através de testes automatizados. 

**Site Escolhido:** [Wikipédia (PT)](https://pt.wikipedia.org/)
> **Motivação:** A escolha da Wikipédia deve-se à sua alta disponibilidade, estabilidade de seletores e performance superior para demonstração de cenários complexos sem bloqueios de segurança (CAPTCHA) ou instabilidades de rede comuns em portais governamentais.

### 🛠 Tecnologias Utilizadas
* **Cypress (v13+)**: Framework de testes.
* **Cucumber / Gherkin**: Para escrita de cenários em linguagem natural (BDD).
* **JavaScript**: Implementação dos steps definitions.
* **Node.js**: Ambiente de execução.

---

## ✅ Cenários Cobertos (Total: 14)

Os testes foram estruturados para cobrir fluxos críticos de navegação e busca:

### 1. Busca e Carregamento 🔍
* Validar carregamento da página principal (Home).
* Realizar uma busca com sucesso.
* Realizar uma busca por termo inexistente (validação de mensagem de erro).

### 2. Menu Lateral e Navegação 🧭
* Acessar página de Ajuda.
* Acessar Conteúdo Destacado.
* Acessar Eventos Atuais.
* Acessar Esplanada.
* Acessar Mudanças Recentes.
* Acessar Novas Páginas.

### 3. Funcionalidades Especiais 🎲
* Acessar "Página Aleatória" (validação de redirecionamento).
* Acessar Página de Contato.

### 4. Rodapé e Informações Institucionais ℹ️
* Acessar Política de Privacidade.
* Acessar "Sobre a Wikipédia".
* Acessar Avisos Gerais.

---

## 🚀 Como Executar o Projeto

### Pré-requisitos
Certifique-se de ter o **Node.js** instalado em sua máquina.

### Passo a Passo

1. **Clone o repositório:**
   ```bash
   git clone [https://github.com/tomazpanta/automacaodetestes.git](https://github.com/tomazpanta/automacaodetestes.git)
   cd automacaodetestes
````

2.  **Instale as dependências:**

    ```bash
    npm install
    ```

3.  **Execute os testes (Interface Visual):**
    Para ver os testes rodando no navegador:

    ```bash
    npx cypress open
    ```

    *Selecione "E2E Testing" \> "Chrome" \> Clique em `portal.feature`.*

4.  **Execute em modo Headless (Terminal):**
    Para rodar tudo no terminal sem abrir janela:

    ```bash
    npx cypress run
    ```

-----

## 📂 Estrutura de Pastas

```
cypress/
  ├── e2e/
  │   ├── features/       # Arquivos .feature (Gherkin)
  │   └── steps/          # Implementação dos passos (JavaScript)
  ├── support/            # Comandos customizados e configurações
  └── fixtures/           # Massas de dados (se necessário)
```

-----

```
```
