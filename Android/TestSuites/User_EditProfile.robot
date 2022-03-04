*** Settings ***
Library     OperatingSystem
Resource  ../Resources/Edit_Profile.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp 
Suite Teardown   Close Apna Application
*** Test Cases ***

Login_Num_flow
   editProfile_Login

toViewProfile
    ViewProfile

toUploadResume
    ResumeToBeUploaded
