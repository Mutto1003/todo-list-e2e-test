*** Settings ***
Resource    ../../init.robot

*** Keywords ***

Checked Item To List
    [Documentation]  Checked item to list
    [Arguments]  ${dataItem}
    ${item}  Set Variable  ${dataItem['items']}
    FOR  ${newItem}  IN  @{item}
        Click checked  ${newItem}
        Verify State On Selector  //android.view.View[@content-desc="${newItem}"]  visible
    END

Verify Checked Item To List
    [Documentation]  Verify Checked item data
    [Arguments]  ${dataItem}
    ${item}  Set Variable  ${dataItem['items']}
    FOR  ${newItem}  IN  @{item}
        ${attribute}  Get Element Attribute  //android.view.View[@content-desc="${item}"]/${btnDeleteItem}  checked
        Should Be Equal  ${attribute}  True
    END
