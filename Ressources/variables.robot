*** Variables ***
#Connexion
${URL}                       https://www.saucedemo.com
${BROWSER}                   chrome
${VALID_USER}                standard_user
${VALID_PASS}                secret_sauce
${LOCKED_USER}               locked_out_user
${WRONG_PASS}                mauvais_mdp

#Champ de login
${USERNAME_INPUT}            id=user-name
${PASSWORD_INPUT}            id=password
${LOGIN_BUTTON}              id=login-button

#Produits add to cart
${TEESHIRT_ADDTOCART}        id=add-to-cart-sauce-labs-bolt-t-shirt
${BACKPACK_ADDTOCART}        id=add-to-cart-sauce-labs-backpack
${BIKELIGHT_ADDTOCART}       id=add-to-cart-sauce-labs-bike-light
${FLEECEJACKET_ADDTOCART}    id=add-to-cart-sauce-labs-fleece-jacket
${ONESIE_ADDTOCART}          id=add-to-cart-sauce-labs-onesie
${TSHIRTRED_ADDTOCART}       id=add-to-cart-test.allthethings()-t-shirt-(red)

#Produits remove
${TEESHIRT_REMOVE}           id=remove-sauce-labs-bolt-t-shirt
${BACKPACK_REMOVE}           id=remove-sauce-labs-backpack
${BIKELIGHT_REMOVE}          id=remove-sauce-labs-bike-light
${FLEECEJACKET_REMOVE}       id=remove-sauce-labs-fleece-jacket
${ONESIE_REMOVE}             id=remove-sauce-labs-onesie
${TSHIRTRED_REMOVE}          id=remove-test.allthethings()-t-shirt-(red)

#Vue produits 
${BACKTOPRODUCTS}            id=back-to-products
${TEESHIRTBLACK}             id=item_1_title_link
${BIKELIGHT}                 id=item_0_title_link
${BACKPACKT}                 id=item_4_title_link
${FLEECEJACKETT}             id=item_5_title_link
${ONESIET}                   id=item_2_title_link
${TSHIRTREDT}                id=item_3_title_link

#Bouton de navigation
${CONTINUE_SHOPPING}         id=continue-shopping
${CHECKOUT}                  id=checkout
${PANIER_BUTTON}             xpath=//span[@class='shopping_cart_badge']
${CONTINUE_BUTTON}        id=continue
${CANCEL_BUTTON}          id=cancel
${FINISH_BUTTON}          id=finish
${BACKHOME_BUTTON}        id=back-to-products

#Configuration
${ERROR_MESSAGE}             css=.error-message-container
${URL_PRODUITS}              inventory
${VITESSE}                   1s

#Formulaire
${FIRSTNAME_FORMULAIRE}      id=first-name
${LASTNAME_FORMULAIRE}       id=last-name
${ZIP_POSTALECODE_FORMULAIRE}    id=postal-code