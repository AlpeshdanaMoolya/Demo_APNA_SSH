*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/messagge_box.robot
Resource  ../Test_data/group_join_leave.robot
Resource  ../POM/commons.robot
Resource  ../POM/loginPageSteps.robot

*** Keywords ***


Login__Mobile_Join  
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


   