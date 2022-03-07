*** Settings ***
Library     OperatingSystem
Resource  ../Resources/User_Reg.robot

Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp
Suite Teardown   Close Apna Application
*** Test Cases ***


User_Reg_flow
   NewUser_Registration


languageSelection
    selectLanguage

createProfile
    profileCreation


detailsOfExperience
    experienceDetails

detailsOfEducation
    educationDetails

selectionOfJob
    preferedjobSelection

profilePictureChoice
    profilePicUploading
