*** Settings ***
Library           AppiumLibrary

*** Variables ***
${host}     http://localhost:4723/wd/hub
${platAndroid}      Android
#for code of device, open cmd and type: adb devices
${redmi9}       602c342e
${emulator}     emulator-5554


*** Test Cases ***

Test_additional
    [Tags]    calculator
    Open_calculator
    click element       id=com.everydaycalculation.casiocalculator:id/btn_9
    Element Should Contain Text     id=com.everydaycalculation.casiocalculator:id/txt_out       9
    click element       id=com.everydaycalculation.casiocalculator:id/btn_add
    click element       id=com.everydaycalculation.casiocalculator:id/btn_3
    Element Should Contain Text     id=com.everydaycalculation.casiocalculator:id/txt_out       3
    Element Should Contain Text     com.everydaycalculation.casiocalculator:id/txt_hint       9 +
    click element       id=com.everydaycalculation.casiocalculator:id/btn_equals
    Element Should Contain Text     com.everydaycalculation.casiocalculator:id/txt_hint       9 + 3
    Element Should Contain Text     id=com.everydaycalculation.casiocalculator:id/txt_out       12



*** Keywords ***

Open_calculator
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${emulator}    appPackage=com.everydaycalculation.casiocalculator   appActivity=com.everydaycalculation.casiocalculator.Basic
    wait until page contains element    id=com.everydaycalculation.casiocalculator:id/mainLayout



#Write on terminal: robot --include=calculator -d PycharmOutput --loglevel simplcacl_test.robot