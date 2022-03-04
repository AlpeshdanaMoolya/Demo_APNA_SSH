*** Settings ***
Library     OperatingSystem
Resource  ../Resources/user_login.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
Suite Teardown   Close Apna Application
*** Test Cases ***

Login_Num_flow
   Login_Num