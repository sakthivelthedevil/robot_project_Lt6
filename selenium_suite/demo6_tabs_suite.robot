*** Settings ***
Library         SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Append To Environment Variable    path      C:\\Users\\Sakthivel\\Desktop\\LT6\\driver
     Open Browser             browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait     30s
     Go To    https://www.db4free.net/
     Click Element    link=phpMyAdmin »
     Switch Window      phpMyAdmin
     Input Text    name=pma_username    admin
     Input Password    name=pma_password    admin@123
     Click Element    id=input_go
     Element Should Contain    xpath=(//div[@role='alert'])[3]     Access denied for user
     


