*** Settings ***
Documentation           Login tests

Resource        ../resources/main.resource

Test Setup      Start Test
Test Teardown   Finish Test

*** Test Case ***
Deve logar com sucesso
    Go To Login Page
    Submit Credentials          papito@gmail.com    vaibrasil
    User Logged In

Não deve logar com senha incorreta
    Go To Login Page
    Submit Credentials          apito@gmail.com    abc123
    Toast Massage Should Be     Credenciais inválidas, tente novamente!

Não deve logar com a senha não informada
# Deve exibir notificação toaster se a senha não for preenchida

    Go To Login Page
    Submit Credentials          papito@gmail.com    ${EMPTY}
    Toast Massage Should Be     Por favor, informe a sua senha secreta!

Não deve logar com o e-mail não informado
# Deve exibir notificação toaster se o email não for preenchida
 
    Go To Login Page
    Submit Credentials          ${EMPTY}  vaibrasil
    Toast Massage Should Be     Por favor, informe o seu email!

Não deve logar com as credenciais não informadas
# Deve exibir notificação toaster se email e senha não for preenchida
 
    Go To Login Page
    Submit Credentials          ${EMPTY}  ${EMPTY}
    Toast Massage Should Be     Por favor, informe suas credenciais!