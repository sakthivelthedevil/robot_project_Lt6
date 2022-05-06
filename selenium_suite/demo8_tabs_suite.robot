*** Settings ***
Library         SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Append To Environment Variable    path      C:\\Users\\Sakthivel\\Desktop\\LT6\\driver
     Open Browser             browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait     30s
     Go To   https://netbanking.hdfcbank.com/IpinResetUsingOTP.htm
     Click Element    xpath=//img[@alt='Go']
     ${a}   Handle Alert    action=ACCEPT
     Log To Console    ${a}
     Log    ${a}