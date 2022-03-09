*** Settings ***
Library     OperatingSystem
Resource  ../Resources/join_leaveGroups.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
# Suite Teardown   Close Apna Application
*** Test Cases ***


enterNumber
    Join_Login_FLOW

OpenGroups
    JoinGroup_FLOW