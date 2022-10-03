*** Settings ***
Documentation    Login Page

Library          Browser

*** Keywords ***
Go To Login Page

    New Page                   https://trade-sticker-dev.vercel.app

Submit Credentials
    [Arguments]                ${email}                                                     ${password}
    Fill Text                  css=input[name=email]                                        ${email}
    Fill Text                  css=input[name=password]                                     ${password}
    CLick                      css=button >> text=Entrar

Toast Massage Should Be
    [Arguments]                ${expected_message}

    # Credenciais inválidas, tente novamente!
    ${locator}
    ...                        Set Variable
    ...                        css=.Toastify__toast-body div >> text=${expected_message}

    Wait For Elements State    ${locator}                                                   visible        3
