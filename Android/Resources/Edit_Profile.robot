*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../POM/commons.robot
Resource  ../POM/EditProfile_PageSteps.robot

*** Keywords ***

Profile_No 
   Login__Mobile_Profile
    
Page_ViewProfile
   ViewProfile

Upload_Resume
   ResumeToBeUploaded