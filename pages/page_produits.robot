*** Settings ***
Library    SeleniumLibrary
Resource   ../Ressources/variables.robot
Resource    ../pages/connexion_utilisateurs.robot

*** Keywords ***

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