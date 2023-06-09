describe('Clear Form', () => {
    
    beforeEach(() => {

        cy.acessAutomationDemoSite()
        cy.validateTitles('Automation Demo Site ')
        cy.validateTitles('Register')
        cy.fillTheForm()
    });

    it('Clear form and check empty fields', () => {

        cy.clickRefresh()
        cy.validateFormClean()
        cy.screenshot('clear_form', { capture: 'runner' })
    });
});