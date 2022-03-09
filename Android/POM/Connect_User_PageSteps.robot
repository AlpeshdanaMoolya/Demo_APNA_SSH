*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/user_connectVar.robot
Resource  ../Test_data/ConnectToUser.robot
Resource  ../POM/commons.robot

*** Keywords ***

openapnapp
   OpenApnaApp

userConnect_Login
   Enter_Mobile_no

Open Connect Page

   Wait for and click on Element  ${connectBtn}
   Wait for and click on Element  ${rightArrowBtn}
   Wait for and click on Element  ${rightArrowBtn}
   Wait for and click on Element  ${rightArrowBtn}
   
#  Wait for and click on Element  ${clickElsewhere}  
   Click A Specific Point  533  1337  
   Click A Specific Point  533  1337  
   Click A Specific Point  533  1337 
   
#    Scroll Down  ${waitForIt}
   Wait for Element  ${waitForIt}
   Click Test_data  ${FriendConnect}
   Wait for and click on Element  ${clickToConnect}
   Wait for and click on Element  ${backBtn}