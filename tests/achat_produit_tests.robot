*** Settings ***
Library          SeleniumLibrary
Resource         ../pages/achat_produit.robot
Test Teardown    Fermer le navigateur

*** Test Cases ***
TC01 - Ajout et verification du teeshirt dans le panier
    [Documentation]    Un utilisateur standard peut se connecter et ajouter un produit dans le panier
    [Tags]             login    smoke    positif
    Ouvrir SauceDemo 
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    Ajouter le teeshirt dans le panier
    Vérifier le teeshirt dans le panier
    Fermer le navigateur
