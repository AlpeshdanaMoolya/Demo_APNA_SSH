*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/Create_PostVar.robot
Resource  ../Test_data/create_Post_replypost.robot
Resource  ../POM/commons.robot

*** Keywords ***

openapnapp
   OpenApnaApp

enter_numberLogin
   Enter_Mobile_no

Create_Post_inGroups
    Wait for and click on Element  ${groups_Btn}
    Wait for and click on Element  ${click_AheadBtn}
    Wait for and click on Element  ${click_AheadBtn}
    Wait for and click on Element  ${done_Btn}
    
    Wait for Element  ${wait_Btn}
    Click Test_data   ${group_name}
    Wait for and click on Element  ${creat_a_Post}
    Wait for Element  ${agree_btn1}
    Click Test_data  ${agree_txt}
    Input Test Data  ${add_Content}  ${data_val}
    Wait for and click on Element  ${@_tag}

    Wait for and click on Element  ${camera}
    Wait for and click on Element  ${permission_camera}
    Wait for and click on Element  ${Allow_btn}
    Wait for and click on Element  ${camera_click}
    Wait for and click on Element  ${done_btn1}
    Wait for and click on Element  ${btn_continue}
    Wait for and click on Element  ${sent_postBtn}
    

Reply_post
   Wait for and click on Element  ${reply_post}
   Wait for and click on Element  ${creat_a_Post}
   Wait for Element  ${add_Content}
   Input Test Data  ${add_Content}  ${data_val}
   Wait for and click on Element  ${sent_postBtn}
   Click A Specific Point  ${x}  ${y}

Hint_Suggestion
   Wait for and click on Element  ${creat_a_Post}
   Wait for and click on Element  ${hint_msg}
   ${message_name}	Get Text  ${get_msg}

    
