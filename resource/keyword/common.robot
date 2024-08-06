*** Settings ***
Resource    ../../init.robot

*** Keywords ***

Start app
    [Documentation]    Open Application Andriod
    Open Application
    ...  remote_url=${REMOTE_URL}
    ...  platformName=${PLATFROM_NAME}
    ...  platformVersion=${PLATFROM_VERSION}
    ...  deviceName=${DEVICE_NAME}
    ...  appPackage=${APP}
    ...  appActivity=${APP_ACTIVITY}
    ...  automationName=${AUTOMATION_NAME}
    ...  noReset=${NO_RESET}
    ...  unicodeKeyboard=${UNICODE_KEYBOARD}

Click Button ${name}
    IF  '${name}' == 'Add'
        Verify State On Selector  ${btnAddItem}  visible
        Click Element  ${btnAddItem}
    ELSE IF  '${name}' == 'Delete'
        # Verify State On Selector  ${btnDeleteItem}  visible
        Click Element  //android.view.View[@content-desc="ww"]/${btnDeleteItem}
    END

Click Button Delete
    [Arguments]  ${item}
    Click Element  //android.view.View[@content-desc="${item}"]/${btnDeleteItem}

Click checked
    [Arguments]  ${item}
    Click Element  //android.view.View[@content-desc="${item}"]/${chkseleceItem}

Input Item List
    [Arguments]  ${itemName}
    ${status}  Run Keyword And Return Status  Verify State On Selector  ${editText}  visible
    IF  ${status}==${True}
        Click Element  ${editText}
        Input Text  ${editText}  text=${itemName}
    END

Verify State On Selector
    [Documentation]
    ...  (default wait for element state timeout = 5s)
    ...  support state follow Browser library such = visible, hidden, enabled, disabled, selected, stable and etc.
    [Arguments]  ${selector}  ${expect_state}  ${timeout}=5s
    Wait Until Element Is Visible  ${selector}  timeout=${timeout}

Capture Image On Screen
    [Documentation]    Capture Image On Screen Mobile
    Capture Page Screenshot  name=screenshot.png