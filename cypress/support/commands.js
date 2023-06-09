const faker = require('faker')//Biblioteca para geração de dados fake
/// <reference types="cypress" />

let gPassword;

// -- Títulos do menu para conferência --  //
const TITLE_PAGE = 'Automation Demo Site '
const TITLE_MENU = 'Register'    
                                            

Cypress.Commands.add('acessAutomationDemoSite', () => {

    cy.visit('Register.html');
    Cypress.on(
        "uncaught:exception", (err, runnable) => false
    );
});//Função realiza acesso a plataforma(tratando erros)

Cypress.Commands.add('validateTitles', (title) => {

    cy.getTitle(title).then((selector) => {
        cy.get(selector).should('have.text', title)
    });
});//Função genérica para validar textos(usa o Map que pode ser alimentado)

Cypress.Commands.add('getTitle', (text) => {

    const texts = new Map()

    .set(TITLE_PAGE, "h1")
    .set(TITLE_MENU, "h2")

    if(texts.has(text)) {
        return texts.get(text)
    }

    expect(false, `Title ${texto} unmapped!`).to.be.true 
});//Função Map capaz de ser alimentada 

Cypress.Commands.add('fillFirstName', () => {

    cy.get(':nth-child(1) > :nth-child(2) > .form-control')
        .should('be.visible')
        .type(faker.name.firstName())
});//Função realiza preenchimento de campo FirstName

Cypress.Commands.add('fillLastName', () => {

    cy.get(':nth-child(1) > :nth-child(3) > .form-control')
        .should('be.visible')
        .type(faker.name.lastName())
});//Função realiza preenchimento de campo LastName

Cypress.Commands.add('fillAddress', () => {

    cy.get('.col-md-8 > .form-control')
        .should('be.visible')
        .type(faker.address.streetAddress())
});//Função realiza preenchimento de campo Address

Cypress.Commands.add('fillEmailAddress', () => {

    cy.get('#eid > .form-control')
        .should('be.visible')
        .type(faker.internet.email())
});//Função realiza preenchimento de campo EmailAddress

Cypress.Commands.add('fillPhone', () => {

    cy.get(':nth-child(4) > .col-md-4 > .form-control')
        .should('be.visible')
        .type('8187872522')
});//Função realiza preenchimento de campo Phone

Cypress.Commands.add('checkGender', () => {

    cy.get(':nth-child(5) > .col-md-4 > :nth-child(1) > input').check()
});//Função realiza check no campo Gender

Cypress.Commands.add('checkHobbies', () => {

    const checks = ['#checkbox1', '#checkbox2', '#checkbox3']

    for (let i = 0; i < 3; i++) {
      
      const randomIndex = Cypress._.random(0, 2)
  
      cy.get(checks[randomIndex]).check()
    }    
});//Função realiza checks nos campos Hobbies de forma randomica

Cypress.Commands.add('selectSkill', () => {

    cy.get('#Skills')
        .should('be.visible')
        .select('Javascript')
        
});//Função realiza seleção FIXA no campo Skills

Cypress.Commands.add('selectCountry', () => {

    cy.get('.select2-selection')
        .should('be.visible')
        .click()
        .get('.select2-search__field')
            .should('be.visible')
            .type('Hong Kong')
            .type('{enter}')
});//Função realiza seleção FIXA no campo Select Country

Cypress.Commands.add('selectDateOfBirth', () => {

    cy.get('#yearbox')
        .should('be.visible')    
        .select('1991')
    cy.get(':nth-child(11) > :nth-child(3) > .form-control')   
        .should('be.visible') 
        .select('June')
    cy.get('#daybox')
        .should('be.visible') 
        .select('26')
});//Função realiza seleção FIXA no campo Date Of Birth

Cypress.Commands.add('fillPassword', () => {

    const password = faker.internet.password()

    cy.get('#firstpassword')
        .should('be.visible')
        .type(password)
        gPassword = password //Exporta globalmente o password criado 
});//Função realiza preenchimento no campo Password de forma randomica

Cypress.Commands.add('fillConfirmPassword', () => {

    cy.get('#secondpassword')
        .should('be.visible')
        .type(gPassword)
});//Função realiza preenchimento com o valor gPassword exportado 

Cypress.Commands.add('attachPhoto', () => {
    const imgPath = 'cy.png';
    cy.get('#imagesrc').attachFile(imgPath);
});
    
Cypress.Commands.add('clickSubmit', () => {

    cy.get('#submitbtn')
        .should('be.visible')
        .click()
});//Função realiza clique no botão Submit

Cypress.Commands.add('fillTheForm', () => {

    cy.fillFirstName()
    cy.fillLastName()
    cy.fillAddress()
    cy.fillEmailAddress()
    cy.fillPhone()
    cy.checkGender()
    cy.checkHobbies()
    cy.selectSkill()
    cy.selectCountry()
    cy.selectDateOfBirth()
    cy.fillPassword()
    cy.fillConfirmPassword()
    cy.attachPhoto()
    cy.clickSubmit()
});//Função chave realiza preenchimento completo do formulário

Cypress.Commands.add('clickRefresh', () => {

    cy.get('#Button1')
        .should('be.visible')
        .click()
});//Função realiza clique no botão Reflesh

Cypress.Commands.add('validateInputsEmpty', () => {

    const inputs = [
        ':nth-child(1) > :nth-child(2) > .form-control',
        ':nth-child(1) > :nth-child(2) > .form-control',
        '#eid > .form-control',
        ':nth-child(4) > .col-md-4 > .form-control',
    ]

    for (let i = 0; i < inputs.length; i++) {

      const field = inputs[i]
  
      cy.get(field).should('have.value', '')
    }
});//Função valida se todos campos de input mapeados estão vazios  

Cypress.Commands.add('validateAddressEmpty', () => {

    const address = '.col-md-8 > .form-control'

    cy.get(address).should('have.value', ' ')
});//Função valida se o campo aberto para digitação mapeado esta vazio 

Cypress.Commands.add('validateSelectsEmpty', () => {

    const selects = [
        '#Skills',
        '.select2-selection',
        '#yearbox',
        ':nth-child(11) > :nth-child(3) > .form-control',
        '#daybox',
    ]
 
    for (let i = 0; i < selects.length; i++) {

        const campo = selects[i]
    
        cy.get(campo).should('have.value', '')  
    }
});//Função valida se os campos de select mapeados estão vazios 

Cypress.Commands.add('validateChecksEmpty', () => {

    const checksRadios = [
        ':nth-child(5) > .col-md-4 > :nth-child(1) > input',
        ':nth-child(5) > .col-md-4 > :nth-child(2) > input',
        '#checkbox1',
        '#checkbox2',
        '#checkbox3',
    ]
 
    for (let i = 0; i < checksRadios.length; i++) {

        const check = checksRadios[i]
    
        cy.get(check).should('not.be.checked')     
    }
});//Função valida se os campos de check mapeados estão vazios 

Cypress.Commands.add('validateFormClean', () => {

    cy.validateInputsEmpty()
    cy.validateAddressEmpty()
    cy.validateSelectsEmpty()
    cy.validateChecksEmpty()
});//Função chave responsável por disparar todas as funções de validação