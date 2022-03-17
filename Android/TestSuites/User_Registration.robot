*** Settings ***
Library     OperatingSystem
Resource  ../Resources/User_Reg.robot

Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp
Suite Teardown  Run Keyword If All Tests Passed   Close Apna Application
*** Test Cases ***


New_User_Authorization
    mobile_Number_flow

languageSelection
    Launguage_flow

createProfile
    User_Profile_flow


detailsOfExperience
    Experience_Details_flow

detailsOfEducation
    Edu_Details_Flow

selectionOfJob
    Job_category_Flow

Pic_Upload_Flow
    Profile_Pic_Flow

