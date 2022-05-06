*** Settings ***
Library         SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***

TC1
    Append To Environment Variable    path      C:\\Users\\Sakthivel\\Desktop\\LT6\\driver
     Open Browser    url=https://www.facebook.com/         browser=chrome
     Input Text    id=email    sakthivel@gmail.com
     Input Password    id=pass    12345678
     Click Element    name=login