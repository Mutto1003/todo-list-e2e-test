*** Settings ***
Resource    ../../init.robot

*** Keywords ***

Add Item To List
    [Documentation]  Add single item to list
    [Arguments]  ${dataItem}
    ${item}  Set Variable  ${dataItem['items']}
    FOR  ${newItem}  IN  @{item}
        Input Item List  ${newItem}
        Click Button Add
        Verify State On Selector  //android.view.View[@content-desc="${newItem}"]  visible
    END

Verify Add Item To List
    [Documentation]  Verify item data
    [Arguments]  ${dataItem}
    ${item}  Set Variable  ${dataItem['items']}
    FOR  ${newItem}  IN  @{item}
        Verify State On Selector  //android.view.View[@content-desc="${newItem}"]  visible
    END
