*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Homepage Loaded
    Title Should Be    Once Human

Scroll To Bottom
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    3s

Verify Elements Exist
    Page Should Contain Element    xpath=//h1[contains(text(), 'Once Human')]
    Page Should Contain Element    xpath=//button[contains(text(), 'Play Now')]

Play Video Promo
    Wait Until Element Is Visible    css=video    timeout=15s
    Click Element    css=video
    Sleep    5s

Check Mobile View
    Set Window Size    375    812
    Wait Until Page Contains    Once Human    timeout=15s

Verify Social Media Links
    Wait Until Page Contains Element    xpath=//a[contains(@href, 'facebook')]
    Wait Until Page Contains Element    xpath=//a[contains(@href, 'twitter')]
    Wait Until Page Contains Element    xpath=//a[contains(@href, 'discord')]