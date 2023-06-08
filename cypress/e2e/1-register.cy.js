describe('Register', () => {

  beforeEach(() => {

    cy.acessAutomationDemoSite()
    cy.validateTitles('Automation Demo Site ')
    cy.validateTitles('Register')
  });

  it('Fill the form', () => {  

    cy.fillTheForm()
  });
  
});  