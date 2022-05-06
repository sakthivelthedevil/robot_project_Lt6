*** Settings ***
Library         SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Append To Environment Variable    path      C:\\Users\\Sakthivel\\Desktop\\LT6\\driver
     Open Browser             browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait     30s
     Go To    https://netbanking.hdfcbank.com/netbanking/
     Select Frame    xpath=//frame[@name='login_page']
     Input Text    xpath=//input[@class='form-control text-muted']     123
     Click Element     link=CONTINUE
     Unselect Frame
