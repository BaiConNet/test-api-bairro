*** Settings ***
Library    RequestsLibrary
Resource    ../../resources/keywords/auth_keywords.robot


*** Test Cases ***
Teste de Registro Mockado
    [Documentation]    Testa o endpoint de registro com dados ficticios
    Criar Sessao
    ${response}=    Registrar Usuario    Weslley Teste    weslley@gmail.com    123456
    Should Be Equal As Integers    ${response.status.code}    201
    Log    ${response.json()}
    Dictionary Should Contain Key    ${response.json()}    id
    Dictionary Should Contain Key    ${response.json()}    mensagem
    
