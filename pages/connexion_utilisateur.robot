*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                   https://www.saucedemo.com
${BROWSER}               chrome
${USERNAME-INPUT}        id=user-name
${PASSWORD_INPUT}        id=password
${LOGIN-BUTTON}          id=login-button
${ERROR-MESSAGE}         css=.error-message-container
${URL_PRODUITS}          inventory
${VITESSE}               2s

*** Keywords ***
Ouvrir SauceDemo
    Open Browser        ${URL}    ${BROWSER}
    Set Selenium Speed    ${VITESSE}
    Maximize Browser Window

Fermer le navigateur
    Close Browser

Saisir les identifiants
    [Arguments]   ${username}          ${password}
    Input Text    ${USERNAME-INPUT}    ${username}
    Input Text    ${PASSWORD_INPUT}    ${password}
 
Cliquer sur Login
    Click Button  ${LOGIN-BUTTON}

La page produit doit être affichée
    Location Should Contain    ${URL_PRODUITS}
    Page Should Contain        Products

Un message d'erreur doit être affiché
    Element Should Be Visible    ${ERROR-MESSAGE}
