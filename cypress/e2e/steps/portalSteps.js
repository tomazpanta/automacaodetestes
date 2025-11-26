import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

const url = "https://pt.wikipedia.org/";

// --- CONTEXTO ---
Given("que eu acesso a página inicial da Wikipédia em Português", () => {
  cy.viewport(1920, 1080);
  cy.visit(url);
});

// --- CENÁRIO 1: CARREGAMENTO ---
Then("o título da página deve conter {string}", (titulo) => {
  cy.title().should("include", titulo);
});

Then("eu devo ver o logo da Wikipédia", () => {
  cy.get('.mw-wiki-logo, .mw-logo-icon').should('be.visible');
});

// --- CENÁRIOS 2 e 3: BUSCA 
When("eu pesquiso por {string} na barra de busca", (termo) => {
  // 1. Primeiro pegamos o input e limpamos.
  // Usamos {force: true} para garantir que limpa mesmo se tiver algo na frente.
  cy.get('input[name="search"]').first().should('exist').clear({force: true});
  
  // 2. Espera pequena para a Wikipédia processar a limpeza 
  cy.wait(500);

  // 3. PEGA O ELEMENTO DE NOVO e digita.
  cy.get('input[name="search"]').first().type(termo, {force: true});

  // 4. Envia o formulário
  cy.get('form#searchform').submit(); 
});

Then("eu devo ver o título do artigo {string}", (tituloArtigo) => {
  cy.get('h1#firstHeading').invoke('text').should('contain', tituloArtigo);
});

Then("a url deve conter {string}", (parteUrl) => {
  cy.url().should('include', parteUrl);
});

Then("eu devo ver a mensagem {string}", (mensagem) => {
  cy.get('.mw-search-nonefound').should('contain.text', mensagem);
});

// --- CENÁRIOS 4, 5 e 6: NAVEGAÇÃO ---
When("eu clico no menu {string}", (nomeMenu) => {
  cy.contains('a', nomeMenu).click({force: true});
});

Then("eu devo ser redirecionado para um artigo qualquer", () => {
  cy.url().should('not.include', 'Página_principal');
  cy.get('h1#firstHeading').should('exist');
});

Then("eu devo ver o título {string}", (tituloPagina) => {
  cy.get('h1#firstHeading').invoke('text').should('contain', tituloPagina);
});

// Passo específico para o Cenário 6 (Ajuda)
Then("eu devo ver o título da página de ajuda", () => {
    cy.get('h1#firstHeading').should('contain.text', 'Ajuda');
});