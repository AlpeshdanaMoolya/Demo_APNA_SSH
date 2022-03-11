*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/User_EditProfile.robot
Resource  ../POM/commons.robot

*** Keywords ***

Login__Profile 
    Enter_Mobile_no

ViewProfile
    Wait for and click on Element  ${viewProfile}

ResumeToBeUploaded
    Wait for and click on Element  ${uploadResume} 
    Wait for and click on Element  ${resumeButton}
    Wait for and click on Element  ${allowButton}
    Wait for and click on Element  ${docsPage}
    # Click A Specific Point  799  873
    Wait for and click on Element  ${submitButton}
    Wait for and click on Element  ${doneButton}

    Sleep  30s
    