*** Settings ***
Library    Zoomba.MobileLibrary

Resource  ../POM/applyForJob_PageSteps.robot


*** Keywords ***

# openapnapp
#    OpenApnaApp

enter_no_apply_flow
   applyJob_Login

Search_job_Flow
   Search_job
    

