*** Settings ***
Library          SeleniumLibrary
Resource         ../pages/page_produits.robot
Test Teardown    Fermer le navigateur

*** Test Cases ***
TC05 - Ajout 1 article - badge du panier affiche 1
    [Documentation]    Un utilisateur standard peut se connecter et ajouter un produit dans le panier
    [Tags]             login    smoke    positif
    Ouvrir SauceDemo 
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter 1 produit
    Fermer le navigateur

TC06 - Ajouter 2 articles - badge du panier affiche 2
    [Documentation]    Un utilisateur standard se connecte et ajouter deux produits dans le panier
    [Tags]        login    smoke    positif
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter 2 produits
    Fermer le navigateur

TC07 - Supprimer depuis la page produits - badge disparaît
    [Documentation]    Un utilisateur standard se connecte, ajoute 1 produit et supprime le produit
    [Tags]        login    smoke    positif
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Supprimer le produit depuis la page produit
    Fermer le navigateur

TC08 - Accéder au panier - article bien présent
    [Documentation]   Un utilisateur standard se connecte, ajoute 1 produit et vérifie dans le panier
    [Tags]            login    smoke    positif
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter 1 produit
    Accéder au panier - article bien présent
    Fermer le navigateur

###TC09 - Supprimer depuis le panier - panier vide
###TC10 - Continuer ses achats - retour page produits