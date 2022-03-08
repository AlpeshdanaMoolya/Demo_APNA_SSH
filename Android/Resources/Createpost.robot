*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/Create_PostVar.robot
Resource  ../Test_data/create_Post_replypost.robot
Resource  ../POM/commons.robot
Library  String
Library  BuiltIn

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
#     Wait for and click on Element  ${creat_a_Post}
#     Wait for Element  ${agree_btn1}
#     Click Test_data  ${agree_txt}
#     Input Test Data  ${add_Content}  ${data_val}
#     Wait for and click on Element  ${@_tag}

#     Wait for and click on Element  ${camera}
#     Wait for and click on Element  ${permission_camera}
#     Wait for and click on Element  ${Allow_btn}
#     Wait for and click on Element  ${camera_click}
#     Wait for and click on Element  ${done_btn1}
#     Wait for and click on Element  ${btn_continue}
#     Wait for and click on Element  ${sent_postBtn}
    

# Reply_post
#    Wait for and click on Element  ${reply_post}
#    Wait for Element  ${add_Content}
#    Input Test Data  ${add_Content}  ${data_val}
#    Wait for and click on Element  ${sent_postBtn}
#    Click A Specific Point  ${x}  ${y}

Suggestion_BroilerPlate
   Wait for and click on Element  ${creat_a_Post}
   Wait for Element  ${agree_btn1}
   Click Test_data  ${agree_txt}
   Wait for and click on Element  ${hint_msg}
   Wait for Element  ${get_msg}
   # ${lines} =	Get Lines Containing String	${Text}  ---
   # Log to console  ${lines}
Hint_Suggestion
   Wait for and click on Element  ${use_msg}
   Wait for and click on Element  ${sent_postBtn}

Hint_Suggestion1
   Wait for and click on Element  ${use_msg}
   Wait for and click on Element  ${sent_postBtn}
   Wait for and click on Element  ${ok1_btn}
   Press Keycode  22
   Press Keycode  8
   Wait for and click on Element  ${sent_postBtn}


if_condition_flow
   ${Text}  Get Text	 ${get_msg}
   Log to console  ${Text}
   Run Keyword If	'${Text}' == '---'	Run Keyword  Hint_Suggestion  ELSE  Hint_Suggestion1
   Sleep  30s