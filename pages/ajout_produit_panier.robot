*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                   https://www.saucedemo.com
${BROWSER}               chrome
${USERNAME_INPUT}        id=user-name
${PASSWORD_INPUT}        id=password
${LOGIN_BUTTON}          id=login-button
${TEESHIRT_ADDTOCART}    id=add-to-cart-sauce-labs-bolt-t-shirt
${PANIER_BUTTON}         xpath=//span[@class='shopping_cart_badge']
${ERROR_MESSAGE}         css=.error-message-container
${INVENTORY_URL}         inventory
${VITESSE}               2s

*** Keywords ***

Ouvrir SauceDemo 
    Open Browser          ${URL}    ${BROWSER}
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

Ajouter le teeshirt dans le panier
    Click Button    ${TEESHIRT_ADDTOCART}

Vérifier le teeshirt dans le panier 
    Click Element    ${PANIER_BUTTON}

