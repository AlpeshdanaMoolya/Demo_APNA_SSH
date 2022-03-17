*** Settings ***
Library     OperatingSystem
Resource  ../Resources/userConnect.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
Suite Teardown   Run Keyword If All Tests Passed   Close Apna Application
*** Test Cases ***


Login_Connect_flows
   userConnect_Login_FLOW


UserConnect_Flow
    Connect_page_open_FLOW