*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/User_EditProfile.robot
Resource  ../Locators/User_login_Variable.robot
Resource  ../Capablities/Desred_cap.robot
Resource  ../POM/commons.robot

*** Keywords ***

openapnapp
   OpenApnaApp

enter no To Login
   Enter_Mobile_no
ViewProfile
    Wait for and click on Element  ${viewProfile}

ResumeToBeUploaded
    Wait for and click on Element  ${uploadResume} 
    Wait for and click on Element  ${resumeButton}
    Wait for and click on Element  ${allowButton}
    Wait for and click on Element  ${docsPage}  20
    Click Test_data  ${resumeText}
    Wait for and click on Element  ${submitButton}
    Wait for and click on Element  ${doneButton}
    