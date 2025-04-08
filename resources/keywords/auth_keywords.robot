*** Settings ***
Library       RequestsLibrary
Resource     ../../variables/variables.robot
Library       Collections



*** Variables ***
${LOGIN_ENDPOINT}    /LOGIN     #Alterar quando tiver o caminho certo.



*** Keywords ***
Criar Sessao
    [documentation]    Cria sessão HTTP com a base da API
    Create session     api    ${BASE_URL}


Registrar Usuario
    [Arguments]    ${nome}    ${email}    ${senha}
    ${body}=    Create Dictionary    nome=${nome}    email=${email}    senha=${senha}
    ${response}=    Post Request      api      /auth/register    json=${body} 
    [Return]    ${response}