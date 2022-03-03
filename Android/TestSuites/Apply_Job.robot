*** Settings ***
Library     OperatingSystem
Resource  ../Resources/ApplyForJob.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
# Suite Teardown   Close Apna Application
*** Test Cases ***


enterNumber
   enter no To Login

selectingAJob -
    Searchforajob