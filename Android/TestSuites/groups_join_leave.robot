*** Settings ***
Library     OperatingSystem
Resource  ../Resources/join_leaveGroups.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
# Suite Teardown   Close Apna Application
*** Test Cases ***


enterNumber
   enter no To Login

OpenGroups
    open Groups Page