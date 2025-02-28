*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/base.robot
Resource    ../resources/homepage.robot

*** Test Cases ***

01_Play Vido Promo
    Open Once Human Website
    Play Video Promo
    Capture Page Screenshot
    Close Website

02_Check Mobile View
    Open Once Human Website
    Check Mobile View
    Capture Page Screenshot
    Close Website

03_Verify Social Media Links
    Open Once Human Website
    Verify Social Media Links
    Capture Page Screenshot
    Close Website