#!/bin/bash
###############################################################
#                       ATTENTION PLEASE
# -------------------------------------------------------------
# @2013.12.17
# @M.R.Z <zgd1348833@gmail.com>
# =============================================================
#    If you want use this script, you must make sure that you
# have configure your android develop environment.
#
# export SDK_HOME=${HOME}/download/android-sdk-linux
# export PATH=${SDK_HOME}:${SDK_HOME}/tools:${SDK_HOME}/platform-tools:$PATH
#
#    After that, you must add the following variable to your
# .bashrc or profile file. Then use command:
#	source ~/.bashrc
#	or
#	source ~/profile
# to enable your environment vaiable.
#
#    At last you can use this script to run the monkeyrunner
# testing.
#
###############################################################

# The test modules init area
sh_AutoCall=./AutoCall/runCall.sh
sh_AutoCamera=./AutoCamera/runCamera.sh

function menu()
{
	echo "
	===========================================
	                AutoTest Menu
	-------------------------------------------
	   1. Initization your SDK_HOME
	   2. Avaiable your .bashrc or profile file
	   *. Do test
	===========================================
	";
}

function AutoCall()
{
	${sh_AutoCall} ${PWD}/AutoCall/Call.py
}

function AutoCamera()
{
	${sh_AutoCamera} ${PWD}/AutoCamera/Camera.py
}

menu
read -p "Choose the test you want do? " ch
case $ch in
	1)
		AutoCall
		;;
	2)
		AutoCamera
		;;
	*)
		echo $ch
		echo "Input error"
		;;
esac
