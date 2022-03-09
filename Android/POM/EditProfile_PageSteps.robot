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
    Wait for Element   ${docsPage}
    # Click Test_data  ${resume_txt}
    # Wait for and click on Element  ${submitButton}
    # Wait for and click on Element  ${doneButton}

    Sleep  30s
    