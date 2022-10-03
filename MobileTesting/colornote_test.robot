*** Settings ***
Library           AppiumLibrary

*** Variables ***
${host}     http://localhost:4723/wd/hub
${platAndroid}      Android
#for code of device, open cmd and type: adb devices
${redmi9}       602c342e
${emulator}     emulator-5554

*** Test Cases ***

open_note
    [Tags]    colornote
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}    appPackage=com.socialnmobile.dictapps.notepad.color.note   appActivity=com.socialnmobile.colornote.activity.Main


#Write at terminal:  robot --include=colornote -d PycharmOutput --loglevel TRACE colornote_test.robot