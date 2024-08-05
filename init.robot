*** Settings ***
Library     AppiumLibrary
Library     OperatingSystem
Library     Collections
Library     String
Library     BuiltIn 

Variables   ./testData/itemMultipleData.yaml
Variables   ./testData/itemSingleData.yaml

Resource    ./resource/configs/configAndroid.robot
Resource    ./resource/keyword/common.robot
Resource    ./resource/keyword/addItem.robot
Resource    ./resource/keyword/deleteItem.robot
Resource    ./resource/keyword/selectItem.robot
Resource    ./resource/locators/common.robot
