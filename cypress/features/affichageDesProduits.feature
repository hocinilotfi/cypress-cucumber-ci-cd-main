@regression
@tc-002
@parcours-01
@parcours-02
@e2e
Feature: Affichage des produits

  Scenario: Vérifier l'affichage des produits après connexion
    Given je suis sur la page produits
    Then la liste des produits doit être affichée
    


