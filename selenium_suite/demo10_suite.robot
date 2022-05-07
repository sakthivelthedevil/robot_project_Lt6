*** Settings ***
Library         SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Append To Environment Variable    path      C:\\Users\\Sakthivel\\Desktop\\LT6\\driver
     Open Browser             browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait     30s
     Go To   https://smallpdf.com/pdf-to-word
     Click Element    xpath=//span[text()='Got it']
     Choose File    xpath=//input[@type='file']    C:\\Users\\Sakthivel\\Downloads\\EAOmENDIRhqCyqizwRZv_Linux OS Part 1 50 MCQ CEXAMINDIA (1).pdf
     ${current_title}   Get Title
     