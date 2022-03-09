*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/Groups.robot
Resource  ../Test_data/group_join_leave.robot
Resource  ../POM/commons.robot

*** Keywords ***


join_no_Login
   Enter_Mobile_no

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
   Wait for and click on Element  ${groupPageBtn}