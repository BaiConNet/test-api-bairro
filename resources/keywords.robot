*** Settings ***

Library      RequestsLibrary
Resource    ../variables/variables.robot


*** Keywords ***
Criar Sessao API
    Create Session    API    ${BASE_URL} 