*** Settings ***
Library           AppiumLibrary

*** Variables ***
${host}     http://localhost:4723/wd/hub
${platAndroid}      Android
#for code of device, open cmd and type: adb devices
${redmi9}       602c342e
${emulator}     emulator-5554

*** Test Cases ***
open_application
    [Tags]   chat21
    Open Application    ${host}   platformName=${platAndroid}    deviceName=${emulator}    appPackage=chat21.android.demo    appActivity=chat21.android.demo.SplashActivity

open_calendar
    [Tags]    calendar
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}    appPackage=pl.mb.calendar    appActivity=pl.mb.calendar.FullActivity

open_note
    [Tags]    colornote
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}    appPackage=com.socialnmobile.dictapps.notepad.color.note   appActivity=com.socialnmobile.colornote.activity.Main

open_airasia
    [Tags]    airasia
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}    appPackage=com.airasia.mobile   appActivity=com.airasia.mobile.MainActivity2


#Write at terminal:  robot --include=calendar -d PycharmOutput --loglevel TRACE simple.robot