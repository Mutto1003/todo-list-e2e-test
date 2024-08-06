*** Settings ***
Resource    ../../init.robot

*** Keywords ***

Delete Item To List
    [Documentation]  Delete single item to list
    [Arguments]  ${dataItem}
    ${item}  Set Variable  ${dataItem['items']}
    FOR  ${newItem}  IN  @{item}
        Click Button Delete  ${newItem}
    END

Verify Delete Item To List
    [Documentation]  Verify Delete item data
    ${elements}  Get Matching Xpath Count  ${allListItem}
    Length Should Be  ${elements}  1
