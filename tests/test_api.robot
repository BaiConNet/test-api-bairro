*** Settings ***
Library    RequestsLibrary
Resource   ../resources/keywords.robot


*** Test Cases ***
[GET] Verificar API status
    Criar Sessao API
    ${response}=    GET    API    
    Status Should Be    200
