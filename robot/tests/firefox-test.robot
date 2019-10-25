*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Execute On Firefox
	[Documentation]  A basic test to see if the geckodriver is working.
	[Tags]  chrome  smoke
	Open Browser  https://robotframework.org/  browser=headlesschrome
	Capture Page Screenshot
	Click Link  Libraries
	Capture Page Screenshot
	Click Link  css:#__BVID__62___BV_tab_button__
	Capture Page Screenshot
