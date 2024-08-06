*** Settings ***
Resource    ../init.robot
Suite Teardown  Close Application

*** Test Cases ***
TOLISTAPP-00001: Verify Delete Single Item To List
    [Documentation]  Verify that a single item can be delete to List successfully.
    [Tags]  TOLISTAPP-00001
    Start app
    Verify State On Selector  ${titleText}  visible
    Add Item To List  dataItem=${itemSingle}
    Delete Item To List  dataItem=${itemSingle}
    Verify Delete Item To List
    Capture Image On Screen

TOLISTAPP-00002: Verify Delete Multiple Items To List
    [Documentation]  Verify that multiple items can be delete to List successfully.
    [Tags]  TOLISTAPP-00002
    Start app
    Verify State On Selector  ${titleText}  visible
    Add Item To List  dataItem=${itemMultipleData}
    Delete Item To List  dataItem=${itemMultipleData}
    Verify Delete Item To List
    Capture Image On Screen

TOLISTAPP-00003: Verify Delete Multiple Some Items To List
    [Documentation]  Verify that multiple items can be delete to List successfully.
    [Tags]  TOLISTAPP-00002
    Start app
    Verify State On Selector  ${titleText}  visible
    Add Item To List  dataItem=${itemMultipleData}
    Delete Item To List  dataItem=${itemMultipleSomeData}
    Capture Image On Screen