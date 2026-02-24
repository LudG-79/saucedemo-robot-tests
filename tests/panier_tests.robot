*** Settings ***
Library          SeleniumLibrary
Resource         ../pages/page_produits.robot
Resource         ../Ressources/variables.robot
Test Teardown    Fermer le navigateur

*** Test Cases ***
TC05 - Ajout 1 article - badge du panier affiche 1
    [Documentation]    Un utilisateur standard peut se connecter et ajouter un produit dans le panier
    [Tags]             produit
    Ouvrir SauceDemo 
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter 1 produit
    Element Should Contain    ${PANIER_BUTTON}    1
    Fermer le navigateur

TC06 - Ajouter 2 articles - badge du panier affiche 2
    [Documentation]    Un utilisateur standard se connecte et ajouter deux produits dans le panier
    [Tags]        produit
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter 2 produits
    Element Should Contain    ${PANIER_BUTTON}    2
    Fermer le navigateur

TC07 - Supprimer depuis la page produits - badge disparaît
    [Documentation]    Un utilisateur standard se connecte, ajoute 1 produit et supprime le produit
    [Tags]        produit
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Supprimer le produit depuis la page produit
    Element Should Not Be Visible    ${PANIER_BUTTON}    0
    Fermer le navigateur

TC08 - Accéder au panier - article bien présent
    [Documentation]   Un utilisateur standard se connecte, ajoute 1 produit et vérifie dans le panier
    [Tags]            panier
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter 1 produit
    Accéder au panier
    Page Should Contain    Sauce Labs Bolt T-Shirt
    Fermer le navigateur

TC09 - Supprimer depuis le panier - panier vide
    [Documentation]     Un utilisateur standard se connecte, ajoute et supprime un article dans le panier
    [Tags]    panier
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter 1 produit    
    Accéder au panier
    Supprimer 1 produit depuis le panier
    Element Should Not Be Visible    ${PANIER_BUTTON}
    Fermer le navigateur

TC10 - Continuer ses achats - retour page produits
    [Documentation]     Un utilisateur standard se connecte, ajoute un article, vérifie son panier et continue son shopping
    [Tags]    retour
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter 1 produit    
    Accéder au panier
    Continuer ses achats - retour page produit
    Page Should Contain    Products
    Fermer le navigateur