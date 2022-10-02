*** Settings ***
Documentation       Teste de negociação de figurinhas da copa

Resource            ../resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test

*** Test Case ***
Deve negociar a figurinha Neymar Legend

    Do login

    Search User         legend
    Select Sticker      Neymar Jr
    Get In Touch
    Whatsapp Sticker Message  Neymar Jr