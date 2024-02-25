
*** Settings ***
Library     RequestsLibrary


*** Variables ***

*** Test Cases ***


Usar get básico
    Create Session                           alias=jsonplaceholder        url=https://jsonplaceholder.typicode.com
    ${Response}        GET On Session        alias=jsonplaceholder        url=/users        expected_status=200


    Log To Console    ${Response.json()}

    Delete All Sessions


*** Keywords ***
