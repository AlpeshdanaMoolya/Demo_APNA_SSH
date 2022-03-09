*** Settings ***
Library     OperatingSystem
Resource  ../Resources/Createpost.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp
Suite Teardown   Close Apna Application
*** Test Cases ***


CreatePost_flow
   noPost_flow

Create_Post_Grp_flow
    Create_Post_FLOW

Repy_to_post_flow
   Reply_Post_FLOW

Suggestion_CreatePosts_flow
   Create_post_Suggestion_FLOW

Suggestion_message_flow
   Hint_Condition_FLOW

