*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/User_EditProfile.robot
Resource  ../POM/commons.robot
Resource  ../POM/userReg_pageSteps.robot
Resource  ../POM/loginPageSteps.robot

*** Keywords ***

Login__Mobile_Profile  
   mobile_login  
   Random_otp
   Wait for and click on Element  ${editText}  
   Input Test Data   ${editText}  ${Login_No}
   Wait for and click on Element  ${Enter_btn}  
   Wait for Element  ${otpBtn1}
   Input Test Data  ${otpBtn1}  ${OTP_NO}
   Input Test Data  ${otpBtn2}  ${OTP_NO}
   Input Test Data  ${otpBtn3}  ${OTP_NO}
   Input Test Data  ${otpBtn4}  ${OTP_NO}


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
    