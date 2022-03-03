*** Settings ***
Library     OperatingSystem
Resource  ../Resources/Edit_Profile.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
Suite Teardown   Close Apna Application
*** Test Cases ***


enterNumber
   enter no To Login


toViewProfile
    ViewProfile

toUploadResume
    ResumeToBeUploaded
