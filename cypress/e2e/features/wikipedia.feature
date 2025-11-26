#language: pt
Funcionalidade: Testes Funcionais Completos na Wikipédia

  Contexto:
    Dado que eu acesso a página inicial da Wikipédia em Português

  # --- GRUPO 1: BÁSICOS E BUSCA (3 Cenários) ---
  Cenario: Validar carregamento da página principal
    Entao o título da página deve conter "Wikipédia"
    E eu devo ver o logo da Wikipédia

  Cenario: Realizar uma busca com sucesso
    Quando eu pesquiso por "Brasil" na barra de busca
    Entao eu devo ver o título do artigo "Brasil"
    E a url deve conter "Brasil"

  Cenario: Realizar uma busca por termo inexistente
    Quando eu pesquiso por "sdkhfksjhdfksjdfh" na barra de busca
    Entao eu devo ver a mensagem "A pesquisa não produziu resultados"

  # --- GRUPO 2: MENU LATERAL - NAVEGAÇÃO (6 Cenários) ---
  Cenario: Acessar pagina de Ajuda
    Quando eu clico no menu "Ajuda"
    Entao eu devo ver o título da página de ajuda

  Cenario: Acessar Conteúdo Destacado
    Quando eu clico no menu "Conteúdo destacado"
    Entao eu devo ver o título "Conteúdo destacado"

  Cenario: Acessar Eventos Atuais
    Quando eu clico no menu "Eventos atuais"
    Entao eu devo ver o título "Eventos atuais"

  Cenario: Acessar Esplanada
    Quando eu clico no menu "Esplanada"
    Entao eu devo ver o título "Esplanada"

  Cenario: Acessar Mudanças Recentes
    Quando eu clico no menu "Mudanças recentes"
    Entao eu devo ver o título "Mudanças recentes"

  Cenario: Acessar Páginas Novas
    Quando eu clico no menu "Páginas novas"
    Entao eu devo ver o título "Novas páginas"

  # --- GRUPO 3: FUNCIONALIDADES ESPECIAIS (2 Cenários) ---
  Cenario: Acessar uma página aleatória
    Quando eu clico no menu "Página aleatória"
    Entao eu devo ser redirecionado para um artigo qualquer

  Cenario: Acessar Página de Contato
    Quando eu clico no menu "Contato"
    Entao eu devo ver o título "Contato"

  # --- GRUPO 4: RODAPÉ E INFORMAÇÕES (3 Cenários) ---
  Cenario: Acessar Política de Privacidade
    Quando eu clico no menu "Política de privacidade"
    Entao eu devo ver o título "Wikimedia Foundation Privacy Policy"

  Cenario: Acessar Sobre a Wikipédia
    Quando eu clico no menu "Sobre a Wikipédia"
    Entao eu devo ver o título "Sobre a Wikipédia"

  Cenario: Acessar Avisos Gerais
    Quando eu clico no menu "Avisos gerais"
    Entao eu devo ver o título "Wikipédia:Limitação de responsabilidade geral"