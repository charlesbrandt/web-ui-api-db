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
    cy.visit("https://localhost:8888");
    // cy.visit("http://boilerplate_ui_1:3000");
    cy.viewport(1000, 800);
  });
});
