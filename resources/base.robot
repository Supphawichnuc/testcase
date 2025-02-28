*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Once Human Website
    Open Browser    https://www.oncehuman.game/    chrome
    Maximize Browser Window
    Wait Until Page Contains    Once Human    timeout=15s

Close Website
    Close Browser