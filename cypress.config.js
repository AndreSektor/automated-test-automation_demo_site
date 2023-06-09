const { defineConfig } = require("cypress");

module.exports = defineConfig({
  viewportHeight: 1280,
  viewportWidth: 720,
  e2e: {
    baseUrl: 'https://demo.automationtesting.in/',
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
