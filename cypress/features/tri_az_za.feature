@regression
@tc-003
@parcours-01
@parcours-02
Feature: Tri des produits sur la page des produits

  Background: Connexion et préparation
    Given je suis sur la page des produits
    Then je suis redirigé vers la page des produits

  @tri-az
  Scenario: Tri Alphabétique A-Z
    When je trie les produits par ordre alphabétique A-Z
    Then les produits sont triés correctement par ordre alphabétique A-Z
  @tri-za
  Scenario: Tri Alphabétique Z-A
    When je trie les produits par ordre alphabétique Z-A
    Then les produits sont triés correctement par ordre alphabétique Z-A
