*** Settings ***
Library         SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Append To Environment Variable    path      C:\\Users\\Sakthivel\\Desktop\\LT6\\driver
     Open Browser             browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait     30s
     Go To   https://demo.openemr.io/b/openemr
     Input Text    xpath=//input[@id='authUser']    admin
     Input Text    id=clearPass    pass
     Select From List By Label    name=languageChoice   English (Indian)
     Click Element    id=login-button
     Click Element    xpath=//div[text()='Messages']
     Select Frame    xpath=//iframe[@name='msg']
     Click Element    xpath=//a[text()='Add New']
     Select From List By Label    id=form_note_type     Pharmacy
     Select From List By Label    id=form_message_status     New
     Select From List By Label    id=users     Jarvis, Fred
     Input Text    id=note    hello
     Click Element    id=cancel

     