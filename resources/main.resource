*** Settings ***
Documentation    Arquivo principal do projeto

Library          Browser

Resource         pages/login.resource
Resource         pages/dash.resource

*** Keywords ***
Do login
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In

Start Test
    New Browser           headless=False      browser=firefox    # browser=firefox > Escolhe qual navegador você quer:

Finish Test
    #Thinking Time
    Sleep                 1
    Take Screenshot