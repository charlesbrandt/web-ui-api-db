// start-here.spec.js created with Cypress
//
// Start writing your Cypress tests below!
// If you're unfamiliar with how Cypress works,
// check out the link below and learn how to write your first test:
// https://on.cypress.io/writing-first-test

describe("My First Test", () => {
  it("Does not do much!", () => {
    expect(true).to.equal(true);
  });
});

describe("My Second Test", () => {
  it("Goes to the home page", () => {
    // Note that cypress is running in docker,
    // so all urls need to use the container names
    cy.visit("http://boilerplate_web_1");
    // cy.visit("http://boilerplate_ui_1:3000");

    // this would mean the webserver is running in the cypress container!
    //cy.visit("https://localhost:8888");

    cy.viewport(1000, 1000);
  });
});
