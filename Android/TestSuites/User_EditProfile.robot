*** Settings ***
Library     OperatingSystem
Resource  ../Resources/Edit_Profile.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp 
Suite Teardown   Run Keyword If All Tests Passed   Close Apna Application
*** Test Cases ***

login_Profile_flow
   Profile_No

Profile_View_flow
    Page_ViewProfile

UploadResume_flow
    Upload_Resume
