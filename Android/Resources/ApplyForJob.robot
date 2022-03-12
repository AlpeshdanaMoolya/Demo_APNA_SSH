*** Settings ***
Library    Zoomba.MobileLibrary

Resource  ../POM/applyForJob_PageSteps.robot


*** Keywords ***

# openapnapp
#    OpenApnaApp

enter_no_apply_flow
   Login__Mobile_ApplyJob

Search_job_Flow
   Search_job
    

