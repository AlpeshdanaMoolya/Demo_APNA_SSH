*** Settings ***
Library     OperatingSystem
Resource  ../Resources/Createpost.robot
Resource  ../POM/commons.robot
Suite Setup  OpenApnaApp
Suite Teardown   Close Apna Application
*** Test Cases ***


enterNumber
   enter_numberLogin

Create_Post
    Create_Post_inGroups

# Repy_to_post
#    Reply_post

Hint_base
   Suggestion_BroilerPlate

Suggestion_message
   if_condition_flow

