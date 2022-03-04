*** Settings ***
Library     OperatingSystem
Resource  ../Resources/ApplyForJob.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
# Suite Teardown   Close Apna Application
*** Test Cases ***


apply_job_login_flow
   applyJob_Login

selectingAJob -
    Searchforajob