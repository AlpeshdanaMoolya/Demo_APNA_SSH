*** Settings ***
Library     OperatingSystem
Resource  ../Resources/userConnect.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
Suite Teardown   Close Apna Application
*** Test Cases ***


enterNumber
   enter_no_Login


OpenConnect
    Open Connect Page