
*** Settings ***
Library     RequestsLibrary


*** Variables ***

*** Test Cases ***
Usar get básico
    Create Session                           alias=jsonplaceholder        url=https://jsonplaceholder.typicode.com/users
    ${Response}        GET On Session        alias=jsonplaceholder        url=https://jsonplaceholder.typicode.com/users

    Log To Console    ${Response}
    Log To Console    ${Response.text}

*** Keywords ***
