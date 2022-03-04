*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Test_data/Loggedin_user.robot
Resource  ../Locators/User_login_Variable.robot
Resource  ../Capablities/Desred_cap.robot
Resource  ../POM/commons.robot

*** Keywords ***

openapnapp
   OpenApnaApp

Login_Num
   Enter_Mobile_no