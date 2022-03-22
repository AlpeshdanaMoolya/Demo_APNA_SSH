editPrefered_job.robot

*** Settings ***
Library     OperatingSystem
Resource  ../Resources/preferredJob_edit.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
Suite Teardown   Run Keyword If All Tests Passed   Close Apna Application
*** Test Cases ***

Login_Num_flow
   preferred_job_Flow

Select_PreferredJob_flow
   Select_jobCat