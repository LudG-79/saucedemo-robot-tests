*** Settings ***
Library     SeleniumLibrary
Resource    ../Ressources/variables.robot
Resource    ../pages/connexion_utilisateurs.robot
Resource    ../pages/page_produits.robot

*** Keywords ***
Saisir le Formulaire 
    [Arguments]    ${firstname}                      ${Lastname}            ${zippostalcode}
    Input Text     ${FIRSTNAME_FORMULAIRE}           ${firstname}
    Input Text     ${LASTNAME_FORMULAIRE}            ${Lastname}
    Input Text     ${ZIP_POSTALECODE_FORMULAIRE}     ${zippostalcode}

Cliquer sur Checkout
    Click Button    ${CHECKOUT}

Cliquer sur continue
    Click Button    ${CONTINUE_BUTTON}

Cliquer sur finish
    Click Button    ${FINISH_BUTTON}   
