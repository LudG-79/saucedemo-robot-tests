*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/variables.robot
Resource    ../pages/connexion_utilisateurs.robot
Resource    ../pages/page_produits.robot
Resource    ../pages/page_panier.robot

*** Keywords ***
Se connecter et préparer le panier
    Ouvrir SauceDemo
    Saisir les identifiants    standard_user    secret_sauce
    Cliquer sur Login
    La page produit doit être affichée
    Ajouter 1 produit
    Accéder au panier

*** Test Cases ***
TC11 - Parcours complet de A a Z — confirmation affichee
    [Documentation]    Un utilisateur se connecte, remplit le panier et confirme sa commande
    [Tags]    positif    panier
    Se connecter et préparer le panier
    Cliquer sur Checkout
    Saisir le Formulaire    John    Doe      44000
    Cliquer sur continue
    Cliquer sur finish
    Page Should Contain    Thank you for your order!
    Fermer le navigateur
TC12 - Soumettre formulaire vide — message erreur
    [Documentation]     Un utilisateur soumet le formulaire vide
    [Tags]     negatif
    Se connecter et préparer le panier
    Cliquer sur Checkout
    Cliquer sur continue
    Element Should Be Visible    ${ERROR_MESSAGE}
    Fermer le navigateur

TC13 - Soumettre sans prenom — message erreur
    [Documentation]    Un utilisateur standard soumet le formulaire sans prénom
    [Tags]    negatif
    Se connecter et préparer le panier
    Cliquer sur Checkout
    Saisir le Formulaire    firstname=   Lastname=Doe    zippostalcode=44000
    Cliquer sur continue
    Page Should Contain    text=Error: First Name is required
    Fermer le navigateur

TC14 - Soumettre sans code postal — message erreur
    [Documentation]    Un utilisateur standard soumet le formulaire sans code postal
    [Tags]    negatif
    Se connecter et préparer le panier
    Cliquer sur Checkout
    Saisir le Formulaire    firstname=John   Lastname=Doe    zippostalcode=
    Cliquer sur continue
    Page Should Contain    text=Error: Postal Code is required
    Fermer le navigateur