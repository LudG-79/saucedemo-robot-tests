*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                   https://www.saucedemo.com
${BROWSER}               chrome
${USERNAME_INPUT}        id=user-name
${PASSWORD_INPUT}        id=password
${LOGIN_BUTTON}          id=login-button
${TEESHIRT_ADDTOCART}    id=add-to-cart-sauce-labs-bolt-t-shirt
${BACKPACK_ADDTOCART}    id=add-to-cart-sauce-labs-backpack
${BIKELIGHT_ADDTOCART}   id=add-to-cart-sauce-labs-bike-light
${FLEECEJACKET_ADDTOCART}    id=add-to-cart-sauce-labs-bike-light
${ONESIE_ADDTOCART}      id=add-to-cart-sauce-labs-onesie
${TSHIRTRED_ADDTOCART}   id=add-to-cart-test.allthethings()-t-shirt-(red)
${TEESHIRT_REMOVE}        id=remove-sauce-labs-bolt-t-shirt
${BACKPACK_REMOVE}        id=remove-sauce-labs-backpack
${BIKELIGHT_REMOVE}       id=remove-sauce-labs-bike-lightt
${FLEECEJACKET_REMOVE}    id=remove-sauce-labs-fleece-jacket
${ONESIE_REMOVE}          id=remove-sauce-labs-onesie
${TSHIRTRED_REMOVE}       id=remove-test.allthethings()-t-shirt-(red)
${BACKTOPRODUCTS}         id=back-to-products
${TEESHIRTBLACK}          id=item_1_title_link
${BIKELIGHT}              id=item_0_title_link
${BACKPACKT}              id=item_4_title_lin
${FLEECEJACKETT}          id=item_5_title_link
${ONESIET}                id=item_2_title_link
${TSHIRTREDT}             id=item_3_title_link
${CONTINUE_SHOPPING}      id=continue-shopping
${CHECKOUT}               id=checkout
###${FIRSTNAME_FORMULAIRE}   id=first-name
###${LASTNAME_FORMULAIRE}    id=lastname
###${ZIP_POSTALECODE_FORMULAIRE}    id=postal-code
###${CONTINUE_BUTTON}        id=continue
###${CANCEL_BUTTON}          id=cancel
###${FINISH_BUTTON}          id=finish
###${BACKHOME_BUTTON}        id=back-to-products
${PANIER_BUTTON}         xpath=//span[@class='shopping_cart_badge']
${ERROR_MESSAGE}         css=.error-message-container
${URL_PRODUITS}          inventory
${VITESSE}               1s

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

Ajouter 1 produit
    Click Button    ${TEESHIRT_ADDTOCART}

Ajouter 2 produits
    Click Button    ${BACKPACK_ADDTOCART}
    Click Button    ${FLEECEJACKET_ADDTOCART}

Supprimer le produit depuis la page produit
    Click Button    ${BACKPACK_ADDTOCART}
    Click Button    ${BACKPACK_REMOVE}

Accéder au panier - article bien présent
    Click Element   ${PANIER_BUTTON}

