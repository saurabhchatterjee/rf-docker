*** Settings ***
Library  OperatingSystem

*** Test Cases ***
Check Linux Version
	${file_con}=  Run  lsb_release -a
