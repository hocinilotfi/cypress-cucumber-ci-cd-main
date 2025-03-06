@tc-005
@parcours-01
@regression
Feature: Card  
    Background:
    Given je suis sur la page produits
    Then je suis redirigé vers la page des produits

    @rederiction-panier
    Scenario: aller au panier
    When je clique sur le panier
    Then je suis redirige vers la page du panier

    @badge
    Scenario: Verification du badge du panier après ajout de produits
    When je clique sur le bouton Add to card du produit "sauce-labs-backpack"
    And je clique sur le bouton Add to card du produit "sauce-labs-bike-light"
    Then le badge du panier affiche "2"

    @verification-visible-panier
    Scenario: Verification des produits dans le panier
    When je clique sur le bouton Add to card du produit "sauce-labs-backpack"
    And je clique sur le bouton Add to card du produit "sauce-labs-bike-light"
    And je clique sur le Panier
    Then les produits sont visible dans le panier

    @verification-suppression-panier
    Scenario: Verification des produits dans le panier
    When je clique sur le bouton Add to card du produit "sauce-labs-backpack"
    And je clique sur le bouton Add to card du produit "sauce-labs-bike-light"
    And je clique sur le Panier
    And je clique sur le bouton Remove des produits
    Then le produit est supprime du panier 




       