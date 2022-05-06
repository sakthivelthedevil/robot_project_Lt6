*** Settings ***
Library         SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***

TC1
     Append To Environment Variable    path      C:\\Users\\Sakthivel\\Desktop\\LT6\\driver
     Open Browser    url=https://www.facebook.com/         browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait     30s
     Click Element    link=Create New Account
     Input Text    name=firstname       sakthi
     Input Text    name=lastname    vel
     Input Text    name=reg_email__    sakthi@gmail.com
     Input Text    name=reg_email_confirmation__    sakthi@gmail.com
     Input Text    id=password_step_input       Welcome123
     select From List By Label    id=day      19
     Select From List By Label    id=month      Feb
     Select From List By Label    id=year       2001
     Click Element    xpath://input[@value='-1']
     Click Element      name=websubmit
     Close Browser




