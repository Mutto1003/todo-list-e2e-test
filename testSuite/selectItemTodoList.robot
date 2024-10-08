*** Settings ***
Resource    ../init.robot
Suite Teardown  Close Application

*** Test Cases ***
TOLISTAPP-00001: Verify Add Single Item To List
    [Documentation]  Verify that a single item can be checked to List successfully.
    [Tags]  TOLISTAPP-00001
    Start app
    Verify State On Selector  ${titleText}  visible
    Add Item To List  dataItem=${itemSingle}
    Checked Item To List  dataItem=${itemSingle}
    Capture Image On Screen

TOLISTAPP-00002: Verify Add Multiple Items To List
    [Documentation]  Verify that multiple items can be checked to List successfully.
    [Tags]  TOLISTAPP-00002
    Start app
    Verify State On Selector  ${titleText}  visible
    Add Item To List  dataItem=${itemMultipleData}
    Checked Item To List  dataItem=${itemMultipleData}
    Capture Image On Screen