*** Settings ***
Library    Zoomba.MobileLibrary
Library    String
Resource  ../POM/commons.robot
Resource  ../POM/userReg_pageSteps.robot

Resource  ../Locators/user_Registration_Variable.robot

*** Keywords ***
# Launch_Login_Application
#     OpenApnaApp

Login__Mobile_no  
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

