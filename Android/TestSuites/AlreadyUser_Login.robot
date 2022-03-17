*** Settings ***
Library     OperatingSystem
Resource  ../Resources/user_login.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
Suite Teardown   Run Keyword If All Tests Passed   Close Apna Application
*** Test Cases ***

Login_Num_flow
   AlreadyReg_Number_flow