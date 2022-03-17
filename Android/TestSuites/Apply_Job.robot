*** Settings ***
Library     OperatingSystem
Resource  ../Resources/ApplyForJob.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
Suite Teardown   Run Keyword If All Tests Passed   Close Apna Application
*** Test Cases ***


apply_job_login_flow
   enter_no_apply_flow

selectingAJob_flow -
    Search_job_Flow