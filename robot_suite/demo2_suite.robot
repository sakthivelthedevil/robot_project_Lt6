*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
    Create File  path=C:\\Users\\Sakthivel\\Desktop\\LT6\\sakthi
    ${files}    List Files In Directory    path=C:\\Users\\Sakthivel\\Desktop\\LT6
    Log To Console    ${files}
    
TC2
    Remove File    path=C:\\Users\\Sakthivel\\Desktop\\LT6\\sakthi

TC3
    Create Dictionary   path=C:\\Users\\Sakthivel\\Desktop\\LT6