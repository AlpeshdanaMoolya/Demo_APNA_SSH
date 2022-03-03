*** Settings ***
Library     OperatingSystem
Resource  ../Resources/User_Reg.robot

Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp  
Suite Teardown   Close Apna Application
*** Test Cases ***


enterNumber
    enter mobile number

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
