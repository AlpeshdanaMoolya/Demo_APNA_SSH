*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/Groups.robot
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
   Element_visiblity  ${groupsBtn} 

Open_Grp_Page
   Wait for and click on Element  ${groupsBtn}
   Wait for and click on Element  ${clickAheadBtn}
   Wait for and click on Element  ${clickAheadBtn}
   Wait for and click on Element  ${doneBtn}
   Wait for and click on Element  ${joinGroupBtn}
   Wait for and click on Element  ${waitBtn}
   Wait for and click on Element  ${imgCrossBtn}

   Scroll Down To Text    ${group_name1}  exact_match=False  swipe_count=2
   
   Wait for and click on Element  ${group_name2}

   Wait for and click on Element  ${Search_btn2}
   Input Test Data  ${Search_btn2}  ${soft}
   Wait for and click on Element  ${waitBtn}
   Element_visiblity  ${groupPageBtn} 
   Wait for and click on Element  ${groupPageBtn}