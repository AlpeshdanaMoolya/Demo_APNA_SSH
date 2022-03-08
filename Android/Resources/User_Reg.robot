*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../POM/userReg_pageSteps.robot


*** Keywords ***
openapnapp
   Launch_Application

mobile_Number_flow
    New__Mobile_no
    
Launguage_flow
    selectLanguage

User_Profile_flow
    profileCreation

Experience_Details_flow
    experienceDetails

Edu_Details_Flow
    educationDetails

Job_category_Flow
    preferedjobSelection

Profile_Pic_Flow
    ProfilePicture_Uploading
