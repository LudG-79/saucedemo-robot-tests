*** Settings ***
Library    SeleniumLibrary
Resource   ../Ressources/variables.robot

*** Keywords ***

Ouvrir SauceDemo
    Open Browser      ${URL}    ${BROWSER}
    Set Selenium Speed    ${VITESSE}
    Maximize Browser Window

Fermer le navigateur
    Close All Browsers    

Saisir les identifiants
    [Arguments]    ${username}          ${password}
    Input Text     ${USERNAME_INPUT}    ${username}
    Input Text     ${PASSWORD_INPUT}    ${password}

Cliquer sur Login
    Click Button    ${LOGIN_BUTTON}

Ajouter 1 produit
    Click Button                     ${TEESHIRT_ADDTOCART}

Ajouter 2 produits
    Click Button                     ${BACKPACK_ADDTOCART}
    Click Button                     ${FLEECEJACKET_ADDTOCART}

Supprimer le produit depuis la page produit
    Click Button    ${BACKPACK_ADDTOCART}
    Click Button    ${BACKPACK_REMOVE}

Accéder au panier
    Click Element   ${PANIER_BUTTON}

Supprimer 1 produit depuis le panier
    Click Button    ${TEESHIRT_REMOVE}

Continuer ses achats - retour page produit
    Click Button    ${CONTINUE_SHOPPING}