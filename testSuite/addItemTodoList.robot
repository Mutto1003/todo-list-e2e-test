*** Settings ***
Resource    ../init.robot
Suite Teardown  Close Application

*** Test Cases ***
TOLISTAPP-00001: Verify Add Single Item To List
    [Documentation]  Verify that a single item can be added to List successfully.
    [Tags]  TOLISTAPP-00001
    Start app
    Verify State On Selector  ${titleText}  visible
    Add Item To List  dataItem=${itemSingle}
    Verify Add Item To List  dataItem=${itemSingle}
    Capture Image On Screen

TOLISTAPP-00002: Verify Add Multiple Items To List
    [Documentation]  Verify that multiple items can be added to List successfully.
    [Tags]  TOLISTAPP-00002
    Start app
    Verify State On Selector  ${titleText}  visible
    Add Item To List  dataItem=${itemMultipleData}
    Verify Add Item To List  dataItem=${itemMultipleData}
    Capture Image On Screen

# TOLISTAPP-00003: Verify Add Multiple Items To List and Count To List