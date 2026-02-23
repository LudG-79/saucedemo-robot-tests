*** Settings ***
Library          SeleniumLibrary
Resource         ../pages/connexion_utilisateur.robot
Test Teardown    Fermer le navigateur

*** Test Cases ***

TC01 - Connexion avec identifiants valides
    [Documentation]    Un utilisateur standard peut se connecter et accéder à l'inventaire
    [Tags]             login    smoke    positif
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    La page produit doit être affichée

TC02 - Connexion avec un mauvais mot de passe
    [Documentation]    Un message d'erreur s'affiche si le mot de passe est incorrect
    [Tags]             login    negatif
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    mauvais_mdp
    Cliquer sur Login
    Un message d'erreur doit être affiché

TC03 - Connexion avec un compte bloqué
    [Documentation]    Un message d'erreur s'affiche pour un compte locked_out
    [Tags]             login    negatif
    Ouvrir SauceDemo
    Saisir les identifiants    locked_out_user    secret_sauce
    Cliquer sur Login
    Un message d'erreur doit être affiché

TC04 - Connexion avec les champs vides
    [Documentation]    Un message d'erreur s'affiche si on clique Login sans rien saisir
    [Tags]             login    negatif
    Ouvrir SauceDemo
    Cliquer sur Login
    Un message d'erreur doit être affiché