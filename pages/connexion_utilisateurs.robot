*** Settings ***
Library    SeleniumLibrary
Resource   ../Ressources/variables.robot 

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
    Click Button  ${LOGIN_BUTTON}

La page produit doit être affichée
    Location Should Contain    ${URL_PRODUITS}
    Page Should Contain        Products

Un message d'erreur doit être affiché
    Element Should Be Visible    ${ERROR_MESSAGE}
