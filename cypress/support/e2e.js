// Import commands.js using ES2015 syntax:
import './commands'

// --- ADICIONE O CÓDIGO ABAIXO ---

// Esse bloco impede que erros do próprio site (aplicação) quebrem o teste
Cypress.on('uncaught:exception', (err, runnable) => {
  // Retorna false para dizer ao Cypress que não queremos falhar o teste
  // só porque o site do governo deu erro de script.
  return false;
});